import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

/// Minimal DeepL API client for the ARB Editor.
///
/// The API-Key is resolved in this order:
/// 1) Provided [apiKey] parameter.
/// 2) `--dart-define=DEEPL_AUTH_KEY` (or `DEEPL_API_KEY`).
/// 3) Environment variable `DEEPL_AUTH_KEY` / `DEEPL_API_KEY` (non-web only).
class DeepLTranslationService {
  DeepLTranslationService({String? apiKey, http.Client? client, this.baseUrl = 'https://api-free.deepl.com'})
    : _apiKey = _sanitize(apiKey ?? _resolveApiKey()),
      _client = client ?? http.Client();

  final http.Client _client;
  final String baseUrl;
  final String _apiKey;

  bool get hasApiKey => _apiKey.isNotEmpty;

  Future<String> translate({required String text, required String targetLang, String? sourceLang}) async {
    if (_apiKey.isEmpty) {
      throw StateError('DeepL API-Key fehlt (DEEPL_AUTH_KEY).');
    }

    return _translateMessage(text, targetLang: targetLang, sourceLang: sourceLang);
  }

  Future<String> _translateMessage(String text, {required String targetLang, String? sourceLang}) async {
    final buffer = StringBuffer();
    final literalBuffer = StringBuffer();

    var index = 0;
    while (index < text.length) {
      final char = text[index];
      if (char == '{') {
        final match = _extractBrace(text, index);
        if (match == null) {
          literalBuffer.write(char);
          index += 1;
          continue;
        }

        final icuBlock = _parseIcuBlock(match.content);
        if (icuBlock != null) {
          if (literalBuffer.isNotEmpty) {
            buffer.write(
              await _translatePlain(literalBuffer.toString(), targetLang: targetLang, sourceLang: sourceLang),
            );
            literalBuffer.clear();
          }
          buffer.write(await _translateIcuBlock(icuBlock, targetLang: targetLang, sourceLang: sourceLang));
        } else if (_findTopLevelComma(match.content, 0) != -1) {
          if (literalBuffer.isNotEmpty) {
            buffer.write(
              await _translatePlain(literalBuffer.toString(), targetLang: targetLang, sourceLang: sourceLang),
            );
            literalBuffer.clear();
          }
          buffer.write('{${match.content}}');
        } else {
          // Keep placeholders and non-ICU arguments inline for better word order.
          literalBuffer.write('{${match.content}}');
        }

        index = match.endIndex + 1;
        continue;
      }

      literalBuffer.write(char);
      index += 1;
    }

    if (literalBuffer.isNotEmpty) {
      buffer.write(await _translatePlain(literalBuffer.toString(), targetLang: targetLang, sourceLang: sourceLang));
    }

    return buffer.toString();
  }

  Future<String> _translateIcuBlock(
    _IcuBlock block, {
    required String targetLang,
    String? sourceLang,
  }) async {
    final optionsBuffer = StringBuffer();
    if (block.offset != null) {
      optionsBuffer.write(block.offset);
      optionsBuffer.write(' ');
    }

    for (var i = 0; i < block.options.length; i += 1) {
      final option = block.options[i];
      final translated = await _translateMessage(option.message, targetLang: targetLang, sourceLang: sourceLang);
      optionsBuffer.write('${option.selector} {$translated}');
      if (i != block.options.length - 1) {
        optionsBuffer.write(' ');
      }
    }

    return '{${block.argument}, ${block.type}, ${optionsBuffer.toString().trim()}}';
  }

  Future<String> _translatePlain(String text, {required String targetLang, String? sourceLang}) async {
    final hasPlaceholders = _placeholderRegex.hasMatch(text);
    final preparedText = hasPlaceholders ? _wrapIgnoredTags(text) : text;
    final uri = Uri.parse('$baseUrl/v2/translate');
    final response = await _postTranslateWithBackoff(
      uri,
      {
        'text': preparedText,
        'target_lang': _normalizeLang(targetLang),
        if (sourceLang != null && sourceLang.trim().isNotEmpty) 'source_lang': _normalizeLang(sourceLang),
        if (hasPlaceholders) ...{
          'tag_handling': 'xml',
          'ignore_tags': _ignoreTagName,
          'tag_handling_version': 'v2',
        },
      },
    );

    if (response.statusCode < 200 || response.statusCode >= 300) {
      if (response.statusCode == 456) {
        throw DeepLQuotaExceededException(response.body);
      }
      if (response.body.contains('Bad request. Reason: Value for ') && response.body.contains('not supported.')) {
        throw UnsupportedError('Target language "$targetLang" is not supported by DeepL');
      }
      throw HttpException('DeepL-Fehler (${response.statusCode}): ${response.body}');
    }

    final decoded = jsonDecode(response.body) as Map<String, dynamic>;
    final translations = decoded['translations'];
    if (translations is List && translations.isNotEmpty) {
      final first = translations.first;
      if (first is Map && first['text'] != null) {
        final translated = first['text'].toString();
        return hasPlaceholders ? _unwrapIgnoredTags(translated) : translated;
      }
    }

    throw StateError('DeepL-Antwort enthielt keine Übersetzung.');
  }

  static String _normalizeLang(String lang) => lang.trim().replaceAll('-', '_').toUpperCase();

  static String _resolveApiKey() {
    const fromDefine = String.fromEnvironment(
      'DEEPL_AUTH_KEY',
      defaultValue: String.fromEnvironment('DEEPL_API_KEY', defaultValue: ''),
    );
    if (fromDefine.isNotEmpty) return fromDefine;

    if (kIsWeb) return '';
    final env = Platform.environment['DEEPL_AUTH_KEY'] ?? Platform.environment['DEEPL_API_KEY'];
    return env ?? '';
  }

  static String _sanitize(String key) => key.trim();

  String _wrapIgnoredTags(String text) {
    return text.replaceAllMapped(
      _placeholderRegex,
      (match) => '<$_ignoreTagName>${match.group(0)}</$_ignoreTagName>',
    );
  }

  String _unwrapIgnoredTags(String text) {
    return text.replaceAll('<$_ignoreTagName>', '').replaceAll('</$_ignoreTagName>', '');
  }

  void close() {
    _client.close();
  }

  Future<http.Response> _postTranslateWithBackoff(Uri uri, Map<String, String> body) async {
    var attempt = 0;
    var delayMs = _initialBackoffMs;

    while (true) {
      final response = await _client
          .post(
            uri,
            headers: {'Authorization': 'DeepL-Auth-Key $_apiKey', 'User-Agent': 'arb-editor/1.0'},
            body: body,
          )
          .timeout(_requestTimeout);

      if (response.statusCode != 429 || attempt >= _max429Retries) {
        return response;
      }

      await Future.delayed(Duration(milliseconds: delayMs));
      delayMs *= 2;
      attempt += 1;
    }
  }
}

const int _initialBackoffMs = 1000;
const int _max429Retries = 4;
const Duration _requestTimeout = Duration(seconds: 30);

_BraceMatch? _extractBrace(String text, int startIndex) {
  var depth = 0;
  for (var i = startIndex; i < text.length; i += 1) {
    final char = text[i];
    if (char == '{') {
      depth += 1;
    } else if (char == '}') {
      depth -= 1;
      if (depth == 0) {
        return _BraceMatch(text.substring(startIndex + 1, i), i);
      }
    }
  }
  return null;
}

_IcuBlock? _parseIcuBlock(String content) {
  final firstComma = _findTopLevelComma(content, 0);
  if (firstComma == -1) return null;
  final secondComma = _findTopLevelComma(content, firstComma + 1);
  if (secondComma == -1) return null;

  final argument = content.substring(0, firstComma).trim();
  final type = content.substring(firstComma + 1, secondComma).trim();
  if (!_icuTypes.contains(type)) return null;

  final optionsText = content.substring(secondComma + 1).trim();
  if (optionsText.isEmpty) return null;

  String? offset;
  final options = <_IcuOption>[];

  var index = 0;
  while (index < optionsText.length) {
    while (index < optionsText.length && optionsText[index].trim().isEmpty) {
      index += 1;
    }
    if (index >= optionsText.length) break;

    if (optionsText.startsWith('offset:', index)) {
      final start = index;
      while (index < optionsText.length && optionsText[index].trim().isNotEmpty) {
        index += 1;
      }
      offset = optionsText.substring(start, index);
      continue;
    }

    final selectorStart = index;
    while (index < optionsText.length && optionsText[index] != '{' && optionsText[index].trim().isNotEmpty) {
      index += 1;
    }
    final selector = optionsText.substring(selectorStart, index).trim();
    if (selector.isEmpty) {
      return null;
    }

    while (index < optionsText.length && optionsText[index].trim().isEmpty) {
      index += 1;
    }
    if (index >= optionsText.length || optionsText[index] != '{') {
      return null;
    }

    final match = _extractBrace(optionsText, index);
    if (match == null) return null;

    options.add(_IcuOption(selector: selector, message: match.content));
    index = match.endIndex + 1;
  }

  if (options.isEmpty) return null;
  return _IcuBlock(argument: argument, type: type, options: options, offset: offset);
}

int _findTopLevelComma(String text, int start) {
  var depth = 0;
  for (var i = start; i < text.length; i += 1) {
    final char = text[i];
    if (char == '{') {
      depth += 1;
    } else if (char == '}') {
      depth -= 1;
    } else if (char == ',' && depth == 0) {
      return i;
    }
  }
  return -1;
}

class _BraceMatch {
  const _BraceMatch(this.content, this.endIndex);

  final String content;
  final int endIndex;
}

class _IcuBlock {
  const _IcuBlock({required this.argument, required this.type, required this.options, this.offset});

  final String argument;
  final String type;
  final List<_IcuOption> options;
  final String? offset;
}

class _IcuOption {
  const _IcuOption({required this.selector, required this.message});

  final String selector;
  final String message;
}

final _placeholderRegex = RegExp(r'\{[a-zA-Z0-9_]+\}');
const String _ignoreTagName = 'arbvar';
const Set<String> _icuTypes = {'plural', 'select', 'selectordinal'};

class DeepLQuotaExceededException implements Exception {
  DeepLQuotaExceededException(this.message);

  final String message;

  @override
  String toString() => message.isEmpty ? 'DeepL-Quota überschritten.' : message;
}
