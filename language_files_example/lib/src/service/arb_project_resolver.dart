import 'dart:io';

import 'package:yaml/yaml.dart';

import '../model/arb_project.dart';

class ArbProjectResolver {
  const ArbProjectResolver();

  Future<ArbProject> resolveDefault() async {
    const compileTimeArbDir = String.fromEnvironment('ARB_DIR');
    if (compileTimeArbDir.isNotEmpty) {
      return resolveArbDirectory(compileTimeArbDir);
    }

    final envArbDir = Platform.environment['ARB_DIR'];
    if (envArbDir != null && envArbDir.isNotEmpty) {
      return resolveArbDirectory(envArbDir);
    }

    final currentProjects = await discover(Directory.current.path);
    if (currentProjects.isNotEmpty) {
      return currentProjects.first;
    }

    final exampleFallback = Directory.current.uri.resolve('../lib/src/localization/arb').toFilePath();
    return resolveArbDirectory(exampleFallback);
  }

  Future<List<ArbProject>> discover(String selectedDirectory) async {
    final directory = Directory(selectedDirectory);
    if (!await directory.exists()) {
      throw FileSystemException('Folder not found', selectedDirectory);
    }

    final directProject = await _resolveDirectory(directory);
    if (directProject != null) {
      return [directProject];
    }

    final projects = <ArbProject>[];
    final l10nFiles = await _findFiles(directory, fileName: 'l10n.yaml', maxDepth: 4);
    for (final file in l10nFiles) {
      try {
        projects.add(await _resolveL10nYaml(file));
      } catch (_) {
        // Ignore invalid nested targets, so one broken package does not block a monorepo scan.
      }
    }

    if (projects.isNotEmpty) {
      projects.sort((a, b) => a.projectRoot.compareTo(b.projectRoot));
      return projects;
    }

    final arbDirectories = await _findArbDirectories(directory, maxDepth: 4);
    for (final arbDirectory in arbDirectories) {
      projects.add(await resolveArbDirectory(arbDirectory.path));
    }

    projects.sort((a, b) => a.arbDirectory.compareTo(b.arbDirectory));
    return projects;
  }

  Future<ArbProject> resolveArbDirectory(String arbDirectoryPath) async {
    final arbDirectory = Directory(arbDirectoryPath);
    if (!await arbDirectory.exists()) {
      throw FileSystemException('ARB folder not found', arbDirectoryPath);
    }

    if (!await _containsArbFiles(arbDirectory)) {
      throw FileSystemException('No ARB files found in folder', arbDirectory.path);
    }

    final projectRoot = _findPubspecRoot(arbDirectory);
    final name = await _projectName(projectRoot ?? arbDirectory);

    return ArbProject(
      name: name,
      projectRoot: (projectRoot ?? arbDirectory).path,
      arbDirectory: arbDirectory.path,
      canRegenerate: projectRoot != null,
    );
  }

  Future<ArbProject?> _resolveDirectory(Directory directory) async {
    final l10nYaml = File(_join(directory.path, 'l10n.yaml'));
    if (await l10nYaml.exists()) {
      return _resolveL10nYaml(l10nYaml);
    }

    if (await _containsArbFiles(directory)) {
      return resolveArbDirectory(directory.path);
    }

    for (final relativeArbDir in const ['lib/l10n', 'lib/src/localization/arb']) {
      final candidate = Directory(directory.uri.resolve(relativeArbDir).toFilePath());
      if (await candidate.exists() && await _containsArbFiles(candidate)) {
        final name = await _projectName(directory);
        return ArbProject(
          name: name,
          projectRoot: directory.path,
          arbDirectory: candidate.path,
          canRegenerate: await File(_join(directory.path, 'pubspec.yaml')).exists(),
        );
      }
    }

    return null;
  }

  Future<ArbProject> _resolveL10nYaml(File file) async {
    final root = file.parent;
    final rawContent = await file.readAsString();
    final yaml = loadYaml(rawContent);
    if (yaml is! YamlMap) {
      throw FormatException('l10n.yaml must contain a YAML object.', file.path);
    }

    final arbDirValue = _yamlString(yaml, 'arb-dir') ?? 'lib/l10n';
    final arbDirectory = Directory(root.uri.resolve(arbDirValue).toFilePath());
    final templateArbFile = _yamlString(yaml, 'template-arb-file');
    final outputDir = _yamlString(yaml, 'output-dir');

    final name = await _projectName(root);

    return ArbProject(
      name: name,
      projectRoot: root.path,
      arbDirectory: arbDirectory.path,
      canRegenerate: await File(_join(root.path, 'pubspec.yaml')).exists(),
      l10nYamlPath: file.path,
      templateArbFile: templateArbFile,
      outputDirectory: outputDir == null ? null : root.uri.resolve(outputDir).toFilePath(),
      outputLocalizationFile: _yamlString(yaml, 'output-localization-file'),
      outputClass: _yamlString(yaml, 'output-class'),
    );
  }

  Future<List<File>> _findFiles(Directory root, {required String fileName, required int maxDepth}) async {
    final files = <File>[];
    final pending = <_DirectoryScanEntry>[_DirectoryScanEntry(root, 0)];

    while (pending.isNotEmpty) {
      final current = pending.removeAt(0);
      if (current.depth > maxDepth) continue;

      await for (final entity in current.directory.list(followLinks: false)) {
        if (entity is File && _basename(entity.path) == fileName) {
          files.add(entity);
        } else if (entity is Directory && current.depth < maxDepth && !_shouldSkipDirectory(entity)) {
          pending.add(_DirectoryScanEntry(entity, current.depth + 1));
        }
      }
    }

    return files;
  }

  Future<List<Directory>> _findArbDirectories(Directory root, {required int maxDepth}) async {
    final directories = <Directory>[];
    final pending = <_DirectoryScanEntry>[_DirectoryScanEntry(root, 0)];

    while (pending.isNotEmpty) {
      final current = pending.removeAt(0);
      if (current.depth > maxDepth) continue;

      if (await _containsArbFiles(current.directory)) {
        directories.add(current.directory);
        continue;
      }

      await for (final entity in current.directory.list(followLinks: false)) {
        if (entity is Directory && current.depth < maxDepth && !_shouldSkipDirectory(entity)) {
          pending.add(_DirectoryScanEntry(entity, current.depth + 1));
        }
      }
    }

    return directories;
  }

  Future<bool> _containsArbFiles(Directory directory) async {
    await for (final entity in directory.list(followLinks: false)) {
      if (entity is File && entity.path.endsWith('.arb')) {
        return true;
      }
    }
    return false;
  }

  bool _shouldSkipDirectory(Directory directory) {
    const skippedNames = {'.dart_tool', '.git', '.idea', '.symlinks', 'build', 'Pods', 'ephemeral', 'node_modules'};
    return skippedNames.contains(_basename(directory.path));
  }

  Directory? _findPubspecRoot(Directory start) {
    var current = start;
    for (var i = 0; i < 8; i += 1) {
      final pubspec = File(_join(current.path, 'pubspec.yaml'));
      if (pubspec.existsSync()) {
        return current;
      }
      if (current.parent.path == current.path) break;
      current = current.parent;
    }
    return null;
  }

  Future<String> _projectName(Directory directory) async {
    final pubspec = File(_join(directory.path, 'pubspec.yaml'));
    if (await pubspec.exists()) {
      try {
        final yaml = loadYaml(await pubspec.readAsString());
        if (yaml is YamlMap) {
          final name = _yamlString(yaml, 'name');
          if (name != null && name.isNotEmpty) {
            return name;
          }
        }
      } catch (_) {
        // Fall back to the directory name when pubspec parsing fails.
      }
    }

    return _basename(directory.path);
  }

  String? _yamlString(YamlMap yaml, String key) {
    final value = yaml[key];
    if (value == null) return null;
    return value.toString();
  }

  String _join(String parent, String child) {
    if (parent.endsWith(Platform.pathSeparator)) {
      return '$parent$child';
    }
    return '$parent${Platform.pathSeparator}$child';
  }

  String _basename(String path) {
    final normalized = path.endsWith(Platform.pathSeparator) ? path.substring(0, path.length - 1) : path;
    final segments = normalized.split(Platform.pathSeparator);
    return segments.isEmpty ? normalized : segments.last;
  }
}

class _DirectoryScanEntry {
  const _DirectoryScanEntry(this.directory, this.depth);

  final Directory directory;
  final int depth;
}
