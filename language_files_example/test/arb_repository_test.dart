import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:language_files_example/src/model/arb_document.dart';
import 'package:language_files_example/src/model/arb_entry.dart';
import 'package:language_files_example/src/model/arb_project.dart';
import 'package:language_files_example/src/repository/arb_repository.dart';

void main() {
  late Directory tempDirectory;

  setUp(() async {
    tempDirectory = await Directory.systemTemp.createTemp('arb_repository_test_');
  });

  tearDown(() async {
    if (await tempDirectory.exists()) {
      await tempDirectory.delete(recursive: true);
    }
  });

  test('loads do-not-translate terms from the ARB directory', () async {
    final arbDirectory = Directory(tempDirectory.uri.resolve('l10n').toFilePath());
    await arbDirectory.create(recursive: true);
    await File(
      arbDirectory.uri.resolve('do_not_translate.json').toFilePath(),
    ).writeAsString('["EHW+", "", "Home Assistant", "EHW+"]');

    final repository = ArbRepository(
      project: ArbProject(
        name: 'test_project',
        projectRoot: tempDirectory.path,
        arbDirectory: arbDirectory.path,
        canRegenerate: false,
      ),
    );

    expect(await repository.loadDoNotTranslateTerms(), ['Home Assistant', 'EHW+']);
  });

  test('saves do-not-translate terms to the ARB directory', () async {
    final arbDirectory = Directory(tempDirectory.uri.resolve('l10n').toFilePath());
    await arbDirectory.create(recursive: true);

    final repository = ArbRepository(
      project: ArbProject(
        name: 'test_project',
        projectRoot: tempDirectory.path,
        arbDirectory: arbDirectory.path,
        canRegenerate: false,
      ),
    );

    await repository.saveDoNotTranslateTerms([' EHW+ ', '', 'Home Assistant', 'EHW+']);

    final content = await File(arbDirectory.uri.resolve('do_not_translate.json').toFilePath()).readAsString();
    expect(content, '[\n  "EHW+",\n  "Home Assistant"\n]');
    expect(await repository.loadDoNotTranslateTermsForEditing(), ['EHW+', 'Home Assistant']);
  });

  test('creates an empty ARB document for a new locale', () async {
    final arbDirectory = Directory(tempDirectory.uri.resolve('l10n').toFilePath());
    await arbDirectory.create(recursive: true);

    final repository = ArbRepository(
      project: ArbProject(
        name: 'test_project',
        projectRoot: tempDirectory.path,
        arbDirectory: arbDirectory.path,
        canRegenerate: false,
        templateArbFile: 'app_en.arb',
      ),
    );

    final template = ArbDocument(
      locale: 'en',
      path: arbDirectory.uri.resolve('app_en.arb').toFilePath(),
      globalMetadata: const {'@@locale': 'en'},
      entries: const {
        'hello': ArbEntry(key: 'hello', value: 'Hello', metadata: {'description': 'Greeting'}),
        'bye': ArbEntry(key: 'bye', value: 'Bye'),
      },
    );

    final document = await repository.createDocumentForLocale(locale: 'sk', template: template);

    expect(document.locale, 'sk');
    expect(document.path, arbDirectory.uri.resolve('app_sk.arb').toFilePath());

    final content = await File(document.path).readAsString();
    expect(content, contains('"@@locale": "sk"'));
    expect(content, contains('"hello": ""'));
    expect(content, contains('"@hello"'));
    expect(content, contains('"bye": ""'));
  });
}
