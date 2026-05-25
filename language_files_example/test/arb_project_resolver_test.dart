import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:language_files_example/src/service/arb_project_resolver.dart';

void main() {
  late Directory tempDirectory;

  setUp(() async {
    tempDirectory = await Directory.systemTemp.createTemp('arb_project_resolver_test_');
  });

  tearDown(() async {
    if (await tempDirectory.exists()) {
      await tempDirectory.delete(recursive: true);
    }
  });

  test('resolves a Flutter l10n.yaml project', () async {
    final root = await _createDirectory(tempDirectory, 'sample_app');
    await _writeFile(root, 'pubspec.yaml', 'name: sample_app\n');
    await _writeFile(
      root,
      'l10n.yaml',
      [
        'arb-dir: lib/i18n',
        'template-arb-file: app_en.arb',
        'output-dir: lib/generated',
        'output-localization-file: app_localizations.dart',
        'output-class: AppLocalizations',
        '',
      ].join('\n'),
    );
    await _writeFile(root, 'lib/i18n/app_en.arb', '{"hello": "Hello"}');

    final projects = await const ArbProjectResolver().discover(root.path);

    expect(projects, hasLength(1));
    expect(projects.single.name, 'sample_app');
    expect(projects.single.projectRoot, root.path);
    expect(projects.single.arbDirectory, root.uri.resolve('lib/i18n').toFilePath());
    expect(projects.single.templateArbFile, 'app_en.arb');
    expect(projects.single.outputDirectory, root.uri.resolve('lib/generated').toFilePath());
    expect(projects.single.outputLocalizationFile, 'app_localizations.dart');
    expect(projects.single.outputClass, 'AppLocalizations');
    expect(projects.single.canRegenerate, isTrue);
  });

  test('discovers multiple l10n.yaml targets in a monorepo', () async {
    final appRoot = await _createDirectory(tempDirectory, 'apps/app_one');
    final packageRoot = await _createDirectory(tempDirectory, 'packages/package_one');
    await _writeFile(appRoot, 'pubspec.yaml', 'name: app_one\n');
    await _writeFile(appRoot, 'l10n.yaml', 'arb-dir: lib/l10n\n');
    await _writeFile(appRoot, 'lib/l10n/app_en.arb', '{"hello": "Hello"}');
    await _writeFile(packageRoot, 'pubspec.yaml', 'name: package_one\n');
    await _writeFile(packageRoot, 'l10n.yaml', 'arb-dir: lib/src/localization/arb\n');
    await _writeFile(packageRoot, 'lib/src/localization/arb/app_de.arb', '{"hello": "Hallo"}');

    final projects = await const ArbProjectResolver().discover(tempDirectory.path);

    expect(projects.map((project) => project.name), containsAll(['app_one', 'package_one']));
    expect(projects, hasLength(2));
  });

  test('resolves a directly selected ARB directory', () async {
    final root = await _createDirectory(tempDirectory, 'sample_app');
    await _writeFile(root, 'pubspec.yaml', 'name: sample_app\n');
    await _writeFile(root, 'lib/l10n/app_en.arb', '{"hello": "Hello"}');
    final arbDirectory = Directory(root.uri.resolve('lib/l10n').toFilePath());

    final project = await const ArbProjectResolver().resolveArbDirectory(arbDirectory.path);

    expect(project.name, 'sample_app');
    expect(project.projectRoot, root.path);
    expect(project.arbDirectory, arbDirectory.path);
    expect(project.usesL10nYaml, isFalse);
    expect(project.canRegenerate, isTrue);
  });
}

Future<Directory> _createDirectory(Directory root, String relativePath) async {
  final directory = Directory(root.uri.resolve(relativePath).toFilePath());
  return directory.create(recursive: true);
}

Future<void> _writeFile(Directory root, String relativePath, String content) async {
  final file = File(root.uri.resolve(relativePath).toFilePath());
  await file.parent.create(recursive: true);
  await file.writeAsString(content);
}
