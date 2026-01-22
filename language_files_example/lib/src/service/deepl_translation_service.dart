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

    final uri = Uri.parse('$baseUrl/v2/translate');
    final response = await _client.post(
      uri,
      headers: {'Authorization': 'DeepL-Auth-Key $_apiKey', 'User-Agent': 'arb-editor/1.0'},
      body: {
        'text': text,
        'target_lang': _normalizeLang(targetLang),
        if (sourceLang != null && sourceLang.trim().isNotEmpty) 'source_lang': _normalizeLang(sourceLang),
      },
    );

    if (response.statusCode < 200 || response.statusCode >= 300) {
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
        return first['text'].toString();
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

  void close() {
    _client.close();
  }
}
