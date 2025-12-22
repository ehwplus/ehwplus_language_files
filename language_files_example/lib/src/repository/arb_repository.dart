import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';

import '../model/arb_document.dart';
import '../model/arb_entry.dart';

class ArbRepository {
  ArbRepository({String? arbDirectory}) : arbDirectory = arbDirectory ?? _resolveDefaultArbDirectory();

  final String arbDirectory;

  static String _resolveDefaultArbDirectory() {
    const compileTimePath = String.fromEnvironment('ARB_DIR');
    if (compileTimePath.isNotEmpty) {
      return compileTimePath;
    }

    final envPath = Platform.environment['ARB_DIR'];
    if (envPath != null && envPath.isNotEmpty) {
      return envPath;
    }

    // Directory: '/Users/<userName>/<projectsFolder>/ehwplus/ehwplus_flutter_mono/packages/ehwplus_language_files/language_files_example'
    final projectDirectory = Directory.current;
    final resolvedUri = projectDirectory.uri.resolve('../lib/src/localization/arb');
    return resolvedUri.toFilePath();
  }

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

    for (final entry in document.entries.values) {
      data[entry.key] = entry.value;
      if (entry.metadata != null) {
        data['@${entry.key}'] = entry.metadata;
      }
    }

    final encoder = const JsonEncoder.withIndent('  ');
    final file = File(document.path);
    await file.writeAsString(encoder.convert(data));
  }

  String _fileName(String path) {
    final segments = path.split(Platform.pathSeparator);
    return segments.isNotEmpty ? segments.last : path;
  }
}
