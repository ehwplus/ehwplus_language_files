import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';

import '../model/arb_document.dart';
import '../model/arb_entry.dart';
import '../model/arb_project.dart';

class ArbRepository {
  ArbRepository({required this.project}) : arbDirectory = project.arbDirectory;

  final ArbProject project;
  final String arbDirectory;
  final ValueNotifier<bool> quotaExceeded = ValueNotifier<bool>(false);

  Future<List<ArbDocument>> loadDocuments() async {
    if (kIsWeb) {
      throw UnsupportedError('Loading ARB files from disk is not supported on web builds.');
    }

    final directory = Directory(arbDirectory);
    if (!await directory.exists()) {
      throw FileSystemException('ARB directory not found', directory.path);
    }

    final arbFiles = await directory
        .list()
        .where((entity) => entity is File && entity.path.endsWith('.arb'))
        .cast<File>()
        .toList();

    arbFiles.sort((a, b) => a.path.compareTo(b.path));

    final documents = <ArbDocument>[];
    for (final file in arbFiles) {
      documents.add(await _readFile(file));
    }
    return documents;
  }

  Future<List<String>> loadDoNotTranslateTerms() async {
    final terms = await loadDoNotTranslateTermsForEditing();
    terms.sort((a, b) => b.length.compareTo(a.length));
    return terms;
  }

  Future<List<String>> loadDoNotTranslateTermsForEditing() async {
    if (kIsWeb) return const [];

    final file = File('$arbDirectory${Platform.pathSeparator}do_not_translate.json');
    if (!await file.exists()) return const [];

    final decoded = json.decode(await file.readAsString());
    if (decoded is! List) {
      throw FormatException('do_not_translate.json must contain a JSON array.', file.path);
    }

    return _sanitizeDoNotTranslateTerms(decoded.map((value) => value.toString()));
  }

  Future<void> saveDoNotTranslateTerms(Iterable<String> terms) async {
    if (kIsWeb) {
      throw UnsupportedError('Saving do_not_translate.json is not supported on web builds.');
    }

    final file = File('$arbDirectory${Platform.pathSeparator}do_not_translate.json');
    final encoder = const JsonEncoder.withIndent('  ');
    await file.writeAsString(encoder.convert(_sanitizeDoNotTranslateTerms(terms)));
  }

  Future<ArbDocument> createDocumentForLocale({required String locale, required ArbDocument template}) async {
    if (kIsWeb) {
      throw UnsupportedError('Creating ARB files is not supported on web builds.');
    }

    final normalizedLocale = locale.trim().toLowerCase();
    if (normalizedLocale.isEmpty) {
      throw ArgumentError.value(locale, 'locale', 'Locale must not be empty.');
    }

    final documentPath = _documentPathForLocale(normalizedLocale, template);
    final file = File(documentPath);
    if (await file.exists()) {
      throw FileSystemException('ARB file already exists', documentPath);
    }

    final globalMetadata = Map<String, dynamic>.from(template.globalMetadata)..['@@locale'] = normalizedLocale;
    final entries = <String, ArbEntry>{
      for (final entry in template.entries.values)
        entry.key: ArbEntry(
          key: entry.key,
          value: '',
          metadata: entry.metadata == null ? null : Map<String, dynamic>.from(entry.metadata!),
        ),
    };

    final document = ArbDocument(
      locale: normalizedLocale,
      path: documentPath,
      entries: entries,
      globalMetadata: globalMetadata,
    );
    await saveDocument(document);
    return document;
  }

  Future<ArbDocument> _readFile(File file) async {
    final fileName = _fileName(file.path);
    final rawContent = await file.readAsString();
    final Map<String, dynamic> jsonContent = json.decode(rawContent) as Map<String, dynamic>;

    final entries = <String, ArbEntry>{};
    final globalMetadata = <String, dynamic>{};

    jsonContent.forEach((key, value) {
      if (key.startsWith('@@')) {
        globalMetadata[key] = value;
      }
    });

    jsonContent.forEach((key, value) {
      if (key.startsWith('@')) {
        final baseKey = key.substring(1);
        final isEntryMetadata = jsonContent.containsKey(baseKey);
        if (!isEntryMetadata && !key.startsWith('@@')) {
          globalMetadata[key] = value;
        }
        return;
      }

      final metadata = jsonContent['@$key'];
      entries[key] = ArbEntry(key: key, value: value, metadata: metadata is Map<String, dynamic> ? metadata : null);
    });

    final guessedLocale = fileName.split('.').first.split('_').last;

    return ArbDocument(
      locale: (globalMetadata['@@locale'] ?? guessedLocale).toString(),
      path: file.path,
      entries: entries,
      globalMetadata: globalMetadata,
    );
  }

  Future<void> saveDocument(ArbDocument document) async {
    final data = <String, dynamic>{...document.globalMetadata};

    final sortedKeys = document.entries.keys.toList()..sort();
    for (final key in sortedKeys) {
      final entry = document.entries[key];
      if (entry == null) continue;
      data[entry.key] = entry.value;
      if (entry.metadata != null) {
        data['@${entry.key}'] = entry.metadata;
      }
    }

    final encoder = const JsonEncoder.withIndent('  ');
    final file = File(document.path);
    await file.writeAsString(encoder.convert(data));
  }

  Future<bool> regenerateDartFiles() async {
    if (kIsWeb) return false;

    final root = project.canRegenerate ? Directory(project.projectRoot) : _findPubspecRoot(Directory(arbDirectory));
    if (root == null) return false;

    final commands = [
      const ['flutter', 'gen-l10n'],
      const ['flutter', 'pub', 'get'],
      const ['dart', 'pub', 'get'],
    ];

    Object? lastError;
    ProcessResult? lastResult;

    for (final command in commands) {
      try {
        final result = await Process.run(command.first, command.sublist(1), workingDirectory: root.path);
        if (result.exitCode == 0) {
          return true;
        }
        lastResult = result;
      } on ProcessException catch (e) {
        lastError = e;
      }
    }

    if (lastResult != null) {
      throw Exception((lastResult.stderr ?? lastResult.stdout).toString().trim());
    }
    if (lastError != null) {
      throw Exception(lastError.toString());
    }
    return false;
  }

  String _fileName(String path) {
    final segments = path.split(Platform.pathSeparator);
    return segments.isNotEmpty ? segments.last : path;
  }

  String _documentPathForLocale(String locale, ArbDocument template) {
    final templateFileName = project.templateArbFile ?? _fileName(template.path);
    final documentFileName = _replaceLocaleInFileName(templateFileName, template.locale, locale);
    return '$arbDirectory${Platform.pathSeparator}$documentFileName';
  }

  String _replaceLocaleInFileName(String fileName, String templateLocale, String locale) {
    final extensionIndex = fileName.toLowerCase().lastIndexOf('.arb');
    if (extensionIndex == -1) {
      return '${fileName}_$locale.arb';
    }

    final baseName = fileName.substring(0, extensionIndex);
    final templateLocaleSuffix = templateLocale.replaceAll('-', '_');
    if (baseName.endsWith('_$templateLocaleSuffix')) {
      return '${baseName.substring(0, baseName.length - templateLocaleSuffix.length)}$locale.arb';
    }

    final match = RegExp(r'^(.*_)[A-Za-z]{2,3}(?:[_-][A-Za-z0-9]+)?$').firstMatch(baseName);
    if (match != null) {
      return '${match.group(1)}$locale.arb';
    }

    return '${baseName}_$locale.arb';
  }

  List<String> _sanitizeDoNotTranslateTerms(Iterable<String> terms) {
    final result = <String>[];
    final seen = <String>{};
    for (final term in terms) {
      final sanitized = term.trim();
      if (sanitized.isEmpty || !seen.add(sanitized)) continue;
      result.add(sanitized);
    }
    return result;
  }

  Directory? _findPubspecRoot(Directory start) {
    var current = start;
    for (var i = 0; i < 8; i += 1) {
      final pubspec = File('${current.path}${Platform.pathSeparator}pubspec.yaml');
      if (pubspec.existsSync()) {
        return current;
      }
      if (current.parent.path == current.path) break;
      current = current.parent;
    }
    return null;
  }

  void markQuotaExceeded() {
    if (!quotaExceeded.value) {
      quotaExceeded.value = true;
    }
  }

  void resetQuotaExceeded() {
    if (quotaExceeded.value) {
      quotaExceeded.value = false;
    }
  }
}
