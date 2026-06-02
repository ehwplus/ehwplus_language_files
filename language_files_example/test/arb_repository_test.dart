import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
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
}
