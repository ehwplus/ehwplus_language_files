class ArbProject {
  const ArbProject({
    required this.name,
    required this.projectRoot,
    required this.arbDirectory,
    required this.canRegenerate,
    this.l10nYamlPath,
    this.templateArbFile,
    this.outputDirectory,
    this.outputLocalizationFile,
    this.outputClass,
  });

  final String name;
  final String projectRoot;
  final String arbDirectory;
  final bool canRegenerate;
  final String? l10nYamlPath;
  final String? templateArbFile;
  final String? outputDirectory;
  final String? outputLocalizationFile;
  final String? outputClass;

  bool get usesL10nYaml => l10nYamlPath != null;
}
