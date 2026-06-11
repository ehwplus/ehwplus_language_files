import 'dart:io';

import 'package:ehwplus_language_files/ehwplus_language_files.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:language_files_example/src/localization/l10n.dart';
import 'package:language_files_example/src/model/arb_document.dart';
import 'package:language_files_example/src/model/arb_entry.dart';
import 'package:language_files_example/src/model/arb_project.dart';
import 'package:language_files_example/src/model/translation_record.dart';
import 'package:language_files_example/src/page/translation_detail_page.dart';
import 'package:language_files_example/src/repository/arb_repository.dart';
import 'package:language_files_example/src/service/arb_project_resolver.dart';
import 'package:language_files_example/src/service/deepl_translation_service.dart';
import 'package:language_files_example/src/widget/api_key_dialog.dart';
import 'package:language_files_example/src/widget/language_icon.dart';
import 'package:trina_grid/trina_grid.dart';

class ArbEditorApp extends StatelessWidget {
  const ArbEditorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => context.l10n.appTitle,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: ArbEditorLocalizations.localizationsDelegates,
      supportedLocales: ArbEditorLocalizations.supportedLocales,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo), useMaterial3: true),
      home: const ArbOverviewPage(),
    );
  }
}

class ArbOverviewPage extends StatefulWidget {
  const ArbOverviewPage({super.key});

  @override
  State<ArbOverviewPage> createState() => _ArbOverviewPageState();
}

class _ArbOverviewPageState extends State<ArbOverviewPage> {
  final ArbProjectResolver _projectResolver = const ArbProjectResolver();
  final TextEditingController _searchController = TextEditingController();
  late final TextEditingController _apiKeyController;
  ArbProject? _project;
  ArbRepository? _repository;
  ValueNotifier<bool>? _quotaNotifier;

  List<ArbDocument> _documents = [];
  List<TranslationRecord> _allRecords = [];
  List<TranslationRecord> _visibleRecords = [];
  Set<String> _availableLocales = {};
  Set<String> _visibleLocales = {'en', 'de'};
  TrinaGridStateManager? _stateManager;

  bool _loading = true;
  String? _error;
  bool _translatingMissing = false;
  bool _quotaExceeded = false;
  int _missingTotal = 0;
  int _missingDone = 0;
  String? _missingCurrentKey;
  String? _missingCurrentLocale;
  String? _missingStatus;
  String? _missingError;

  @override
  void initState() {
    super.initState();
    _apiKeyController = TextEditingController(text: _initialApiKey());
    _loadInitialProject();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _apiKeyController.dispose();
    _quotaNotifier?.removeListener(_handleQuotaChange);
    super.dispose();
  }

  Future<void> _loadInitialProject() async {
    try {
      final project = await _projectResolver.resolveDefault();
      if (!mounted) return;
      await _useProject(project);
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = e.toString();
        _loading = false;
      });
    }
  }

  Future<void> _useProject(ArbProject project) async {
    _quotaNotifier?.removeListener(_handleQuotaChange);
    final repository = ArbRepository(project: project);
    final quotaNotifier = repository.quotaExceeded;
    quotaNotifier.addListener(_handleQuotaChange);

    setState(() {
      _project = project;
      _repository = repository;
      _quotaNotifier = quotaNotifier;
      _quotaExceeded = quotaNotifier.value;
      _stateManager = null;
      _documents = [];
      _allRecords = [];
      _visibleRecords = [];
      _availableLocales = {};
      _visibleLocales = {'en', 'de'};
      _searchController.clear();
    });

    await _loadData();
  }

  Future<void> _loadData() async {
    final repository = _repository;
    if (repository == null) {
      setState(() {
        _loading = false;
        _error = context.l10n.openProjectOrArbFolderFirst;
      });
      return;
    }

    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final documents = await repository.loadDocuments();
      if (!mounted) return;

      final records = _buildRecords(documents);
      final locales = documents.map((doc) => doc.locale).toSet();
      final defaultVisible = {if (locales.contains('en')) 'en', if (locales.contains('de')) 'de'};
      setState(() {
        _documents = documents;
        _allRecords = records;
        _availableLocales = locales;
        _visibleLocales = defaultVisible.isNotEmpty ? defaultVisible : locales;
        _applyFilter(_searchController.text, rebuild: false);
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = e.toString();
        _visibleRecords = [];
      });
    } finally {
      if (mounted) {
        setState(() {
          _loading = false;
        });
      }
    }
  }

  Future<void> _openProjectPicker() async {
    final l10n = context.l10n;
    if (kIsWeb) {
      _showSnack(l10n.folderPickerUnavailableOnWeb);
      return;
    }

    final selectedPath = await FilePicker.getDirectoryPath(dialogTitle: l10n.openProjectOrArbFolderDialogTitle);
    if (selectedPath == null) return;

    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final projects = await _projectResolver.discover(selectedPath);
      if (!mounted) return;

      if (projects.isEmpty) {
        setState(() {
          _loading = false;
          _error = l10n.noL10nOrArbFilesFound;
        });
        return;
      }

      final selectedProject = projects.length == 1 ? projects.single : await _selectProject(projects);
      if (selectedProject == null) {
        if (mounted) {
          setState(() {
            _loading = false;
          });
        }
        return;
      }

      await _useProject(selectedProject);
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = e.toString();
      });
    }
  }

  Future<ArbProject?> _selectProject(List<ArbProject> projects) {
    return showDialog<ArbProject>(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text(context.l10n.selectL10nTargetTitle),
          children: projects
              .map(
                (project) => SimpleDialogOption(
                  onPressed: () => Navigator.of(context).pop(project),
                  child: _ProjectOption(project: project),
                ),
              )
              .toList(),
        );
      },
    );
  }

  void _handleQuotaChange() {
    if (!mounted) return;
    setState(() {
      _quotaExceeded = _quotaNotifier?.value ?? false;
    });
  }

  String _initialApiKey() {
    const fromDefine = String.fromEnvironment(
      'DEEPL_AUTH_KEY',
      defaultValue: String.fromEnvironment('DEEPL_API_KEY', defaultValue: ''),
    );
    if (fromDefine.isNotEmpty) return fromDefine;

    if (kIsWeb) return '';
    final env = Platform.environment['DEEPL_AUTH_KEY'] ?? Platform.environment['DEEPL_API_KEY'];
    return env ?? '';
  }

  Widget _buildApiKeyChip() {
    final l10n = context.l10n;
    final hasKey = _apiKeyController.text.trim().isNotEmpty;
    return InputChip(
      avatar: const Icon(Icons.vpn_key),
      label: Text(hasKey ? l10n.deepLKeySet : l10n.deepLKeyMissing),
      selected: hasKey,
      onPressed: _translatingMissing ? null : _openApiKeyDialog,
    );
  }

  Future<void> _openApiKeyDialog() async {
    final result = await showDialog<String>(
      context: context,
      builder: (context) => ApiKeyDialog(initialValue: _apiKeyController.text),
    );

    if (result != null) {
      if (!mounted) return;
      setState(() {
        _apiKeyController.text = result;
      });
      _repository?.resetQuotaExceeded();
    }
  }

  Future<String?> _ensureApiKey() async {
    final current = _apiKeyController.text.trim();
    if (current.isNotEmpty) return current;
    await _openApiKeyDialog();
    final updated = _apiKeyController.text.trim();
    return updated.isEmpty ? null : updated;
  }

  List<LocaleClass> _missingLocaleClasses() {
    final availableLocales = _availableLocales.map((locale) => locale.toLowerCase()).toSet();
    return LocaleClass.appLocalizationValues
        .where((localeClass) => !availableLocales.contains(localeClass.languageCode))
        .toList(growable: false);
  }

  ArbDocument? _templateDocumentForNewLocale() {
    if (_documents.isEmpty) return null;

    final templateArbFile = _project?.templateArbFile;
    if (templateArbFile != null) {
      for (final document in _documents) {
        if (document.path.endsWith(templateArbFile)) {
          return document;
        }
      }
    }

    for (final document in _documents) {
      if (document.locale == 'en') {
        return document;
      }
    }

    return _documents.first;
  }

  Future<void> _openDoNotTranslateDialog() async {
    final l10n = context.l10n;
    final repository = _repository;
    if (repository == null) {
      _showSnack(l10n.openProjectFirst);
      return;
    }

    late final List<String> terms;
    try {
      terms = await repository.loadDoNotTranslateTermsForEditing();
    } catch (e) {
      _showSnack(l10n.doNotTranslateReadFailed(e.toString()));
      return;
    }

    if (!mounted) return;
    final result = await showDialog<List<String>>(
      context: context,
      builder: (context) => _DoNotTranslateDialog(initialTerms: terms),
    );
    if (result == null) return;

    try {
      await repository.saveDoNotTranslateTerms(result);
      if (mounted) {
        _showSnack(l10n.doNotTranslateSaved);
      }
    } catch (e) {
      _showSnack(l10n.doNotTranslateSaveFailed(e.toString()));
    }
  }

  List<TranslationRecord> _buildRecords(List<ArbDocument> documents) {
    final Map<String, Map<String, String>> merged = {};

    for (final document in documents) {
      for (final entry in document.entries.values) {
        final current = merged.putIfAbsent(entry.key, () => {});
        current[document.locale] = entry.value?.toString() ?? '';
      }
    }

    final records = merged.entries.map((entry) => TranslationRecord(key: entry.key, values: entry.value)).toList();

    records.sort((a, b) => a.key.compareTo(b.key));
    return records;
  }

  void _applyFilter(String value, {bool rebuild = true}) {
    final query = value.trim().toLowerCase();
    List<TranslationRecord> filtered;

    if (query.isEmpty) {
      filtered = List<TranslationRecord>.from(_allRecords);
    } else {
      filtered = _allRecords.where((record) {
        if (record.key.toLowerCase().contains(query)) {
          return true;
        }

        return record.values.values.any((text) => text.toLowerCase().contains(query));
      }).toList();
    }

    if (rebuild) {
      setState(() {
        _visibleRecords = filtered;
      });
    } else {
      _visibleRecords = filtered;
    }

    _updateGridRows(filtered);
  }

  void _toggleLocale(String locale) {
    setState(() {
      if (_visibleLocales.contains(locale)) {
        _visibleLocales = {..._visibleLocales}..remove(locale);
      } else {
        _visibleLocales = {..._visibleLocales, locale};
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _updateGridRows(_visibleRecords);
    });
  }

  void _openDetail(String key) async {
    final repository = _repository;
    if (repository == null) return;

    final record = _allRecords.firstWhere(
      (element) => element.key == key,
      orElse: () => TranslationRecord(key: key, values: const {}),
    );

    final saved = await Navigator.of(context).push<bool>(
      MaterialPageRoute(
        builder: (_) => TranslationDetailPage(record: record, documents: _documents, repository: repository),
      ),
    );

    if (saved == true) {
      _loadData();
    }
  }

  List<String> _orderedLocales(Set<String> locales) {
    final ordered = <String>[];
    if (locales.contains('en')) ordered.add('en');
    if (locales.contains('de')) ordered.add('de');
    final rest = locales.where((l) => l != 'en' && l != 'de').toList()..sort();
    ordered.addAll(rest);
    return ordered;
  }

  String? _findSourceLocaleForRecord(TranslationRecord record, Iterable<String> locales) {
    final ordered = _orderedLocales(locales.toSet());
    for (final locale in ordered) {
      final value = record.values[locale]?.trim();
      if (value != null && value.isNotEmpty) {
        return locale;
      }
    }
    return null;
  }

  Future<void> _translateMissing() async {
    if (_translatingMissing || _quotaExceeded) return;

    final l10n = context.l10n;
    final repository = _repository;
    if (repository == null) {
      _showSnack(l10n.openProjectFirst);
      return;
    }

    final apiKey = await _ensureApiKey();
    if (apiKey == null || apiKey.isEmpty) {
      _showSnack(l10n.enterDeepLApiKey);
      return;
    }

    if (_availableLocales.isEmpty) {
      _showSnack(l10n.noArbLocalesAvailable);
      return;
    }

    late final List<String> doNotTranslateTerms;
    try {
      doNotTranslateTerms = await repository.loadDoNotTranslateTerms();
    } catch (e) {
      _showSnack(l10n.doNotTranslateReadFailed(e.toString()));
      return;
    }

    final totalMissing = _countMissingTranslations();
    setState(() {
      _translatingMissing = true;
      _error = null;
      _missingError = null;
      _missingTotal = totalMissing;
      _missingDone = 0;
      _missingCurrentKey = null;
      _missingCurrentLocale = null;
      _missingStatus = totalMissing == 0 ? l10n.noMissingTranslationsFound : l10n.startTranslation;
    });

    final service = DeepLTranslationService(apiKey: apiKey, doNotTranslateTerms: doNotTranslateTerms);
    var didTranslate = false;
    var quotaHit = false;

    try {
      final locales = _availableLocales.toList();
      final records = List<TranslationRecord>.from(_allRecords);

      for (final record in records) {
        if (quotaHit) break;
        final missingLocales = locales.where((locale) {
          final value = record.values[locale];
          return value == null || value.trim().isEmpty;
        }).toList();

        if (missingLocales.isEmpty) continue;

        final sourceLocale = _findSourceLocaleForRecord(record, locales);
        if (sourceLocale == null) continue;
        final sourceText = record.values[sourceLocale]?.trim() ?? '';
        if (sourceText.isEmpty) continue;

        for (final locale in missingLocales) {
          if (quotaHit) break;
          if (mounted) {
            setState(() {
              _missingCurrentKey = record.key;
              _missingCurrentLocale = locale;
              _missingStatus = l10n.translatingKeyToLocale(record.key, locale.toUpperCase());
            });
          }
          try {
            final translated = await service.translate(text: sourceText, targetLang: locale, sourceLang: sourceLocale);
            await _saveTranslation(record.key, locale, translated);
            didTranslate = true;
            if (mounted) {
              setState(() {
                _missingDone += 1;
              });
            }
          } on DeepLQuotaExceededException catch (e) {
            repository.markQuotaExceeded();
            quotaHit = true;
            _showSnack(l10n.deepLQuotaReachedWithError(e.toString()));
            if (mounted) {
              setState(() {
                _missingError = l10n.deepLQuotaReached;
              });
            }
          } catch (e) {
            _showSnack('DeepL: $e');
            if (mounted) {
              setState(() {
                _missingError = e.toString();
              });
            }
          }
        }
      }
    } finally {
      service.close();
      if (didTranslate) {
        try {
          await repository.regenerateDartFiles();
        } catch (e) {
          _showSnack(l10n.regenerationFailed(e.toString()));
        }
      }
      if (mounted) {
        await _loadData();
        setState(() {
          _translatingMissing = false;
          _missingStatus = quotaHit
              ? l10n.abortedBecauseOfQuota
              : (didTranslate ? l10n.translationCompleted : _missingStatus);
          _missingCurrentKey = null;
          _missingCurrentLocale = null;
        });
      }
    }
  }

  int _countMissingTranslations() {
    if (_availableLocales.isEmpty) return 0;
    var total = 0;
    final locales = _availableLocales.toList();
    for (final record in _allRecords) {
      final sourceLocale = _findSourceLocaleForRecord(record, locales);
      if (sourceLocale == null) continue;
      for (final locale in locales) {
        final value = record.values[locale];
        if (value == null || value.trim().isEmpty) {
          total += 1;
        }
      }
    }
    return total;
  }

  Future<void> _saveTranslation(String key, String locale, String value) async {
    final repository = _repository;
    if (repository == null) return;

    final index = _documents.indexWhere((doc) => doc.locale == locale);
    if (index == -1) return;

    final doc = _documents[index];
    final updatedEntries = Map<String, ArbEntry>.from(doc.entries);
    final existing = updatedEntries[key];
    updatedEntries[key] = (existing ?? ArbEntry(key: key, value: value)).copyWith(value: value);

    final updatedDoc = doc.copyWith(entries: updatedEntries);
    await repository.saveDocument(updatedDoc);
    _documents[index] = updatedDoc;

    _applyTranslationToRecords(key, locale, value);
  }

  void _showSnack(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  void _applyTranslationToRecords(String key, String locale, String value) {
    final recordIndex = _allRecords.indexWhere((record) => record.key == key);
    if (recordIndex != -1) {
      final existing = _allRecords[recordIndex];
      final updatedValues = Map<String, String>.from(existing.values)..[locale] = value;
      _allRecords[recordIndex] = TranslationRecord(key: existing.key, values: updatedValues);
    } else {
      _allRecords.add(TranslationRecord(key: key, values: {locale: value}));
      _allRecords.sort((a, b) => a.key.compareTo(b.key));
    }

    _applyFilter(_searchController.text);
  }

  Future<void> _openAddTranslationDialog() async {
    final l10n = context.l10n;
    final repository = _repository;
    if (repository == null) {
      _showSnack(l10n.openProjectFirst);
      return;
    }

    if (_availableLocales.isEmpty) {
      _showSnack(l10n.noArbLocalesAvailable);
      return;
    }

    final result = await showDialog<_AddTranslationResult>(
      context: context,
      builder: (context) => _AddTranslationDialog(
        availableLocales: _availableLocales.toList()..sort(),
        existingKeys: _allRecords.map((record) => record.key).toSet(),
      ),
    );

    if (result == null) return;
    if (!mounted) return;

    final documentIndex = _documents.indexWhere((doc) => doc.locale == result.locale);
    if (documentIndex == -1) {
      _showSnack(l10n.localeUnavailable(result.locale));
      return;
    }

    if (_allRecords.any((record) => record.key == result.key)) {
      _showSnack(l10n.keyAlreadyExists);
      return;
    }

    final target = _documents[documentIndex];
    final updatedEntries = Map<String, ArbEntry>.from(target.entries)
      ..[result.key] = ArbEntry(key: result.key, value: result.value);

    try {
      await repository.saveDocument(target.copyWith(entries: updatedEntries));
      try {
        final ran = await repository.regenerateDartFiles();
        if (ran && mounted) {
          _showSnack(l10n.dartFilesRegenerated);
        }
      } catch (e) {
        if (mounted) {
          _showSnack(l10n.regenerationFailed(e.toString()));
        }
      }
      if (mounted) {
        _showSnack(l10n.keyAdded(result.key));
        await _loadData();
      }
    } catch (e) {
      if (mounted) {
        _showSnack(l10n.saveFailed(e.toString()));
      }
    }
  }

  Future<void> _openAddLocaleDialog() async {
    final l10n = context.l10n;
    final repository = _repository;
    if (repository == null) {
      _showSnack(l10n.openProjectFirst);
      return;
    }

    final missingLocales = _missingLocaleClasses();
    if (missingLocales.isEmpty) return;

    final templateDocument = _templateDocumentForNewLocale();
    if (templateDocument == null) {
      _showSnack(l10n.noLocaleTemplateFound);
      return;
    }

    final selectedLocale = await showDialog<LocaleClass>(
      context: context,
      builder: (context) => _AddLocaleDialog(locales: missingLocales),
    );
    if (selectedLocale == null) return;

    final locale = selectedLocale.languageCode;
    try {
      await repository.createDocumentForLocale(locale: locale, template: templateDocument);
      try {
        final ran = await repository.regenerateDartFiles();
        if (ran && mounted) {
          _showSnack(l10n.dartFilesRegenerated);
        }
      } catch (e) {
        if (mounted) {
          _showSnack(l10n.regenerationFailed(e.toString()));
        }
      }
      if (mounted) {
        await _loadData();
        setState(() {
          _visibleLocales = {..._visibleLocales, locale};
        });
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _updateGridRows(_visibleRecords);
        });
        _showSnack(l10n.localeAdded(locale.toUpperCase()));
      }
    } catch (e) {
      _showSnack(l10n.languageAddFailed(e.toString()));
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final canAddMissingLocale = _repository != null && !_loading && _missingLocaleClasses().isNotEmpty;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
        actions: [
          _buildApiKeyChip(),
          IconButton(
            tooltip: l10n.editDoNotTranslateTooltip,
            onPressed: _repository == null || _loading ? null : _openDoNotTranslateDialog,
            icon: const Icon(Icons.rule),
          ),
          if (canAddMissingLocale)
            IconButton(
              tooltip: l10n.addMissingLanguageTooltip,
              onPressed: _openAddLocaleDialog,
              icon: const Icon(Icons.language),
            ),
          TextButton.icon(
            onPressed: _repository == null || _loading || _translatingMissing || _quotaExceeded
                ? null
                : _translateMissing,
            icon: _translatingMissing
                ? const SizedBox(height: 16, width: 16, child: CircularProgressIndicator(strokeWidth: 2))
                : const Icon(Icons.translate),
            label: Text(l10n.translateMissingButton),
          ),
          IconButton(
            tooltip: l10n.openProjectOrArbFolderDialogTitle,
            onPressed: _loading || _translatingMissing ? null : _openProjectPicker,
            icon: const Icon(Icons.folder_open),
          ),
          IconButton(
            tooltip: l10n.addNewKeyTooltip,
            onPressed: _repository == null || _loading ? null : _openAddTranslationDialog,
            icon: const Icon(Icons.add),
          ),
          IconButton(
            tooltip: l10n.reloadTooltip,
            onPressed: _repository == null || _loading ? null : _loadData,
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _ProjectHeader(project: _project, onOpenProject: _openProjectPicker),
            const SizedBox(height: 12),
            if (_quotaExceeded)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.errorContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(Icons.warning, color: Theme.of(context).colorScheme.onErrorContainer),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        l10n.quotaDisabledMessage,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onErrorContainer),
                      ),
                    ),
                  ],
                ),
              ),
            if (_quotaExceeded) const SizedBox(height: 12),
            if (_translatingMissing || _missingStatus != null || _missingError != null)
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        if (_translatingMissing) ...[
                          const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2)),
                          const SizedBox(width: 8),
                        ] else
                          Icon(Icons.info, color: Theme.of(context).colorScheme.onSurfaceVariant),
                        Expanded(
                          child: Text(_missingStatus ?? l10n.status, style: Theme.of(context).textTheme.bodyMedium),
                        ),
                        if (_missingTotal > 0)
                          Text(
                            '${_missingDone.clamp(0, _missingTotal)}/$_missingTotal',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                      ],
                    ),
                    if (_missingCurrentKey != null || _missingCurrentLocale != null) ...[
                      const SizedBox(height: 6),
                      Text(
                        [
                          if (_missingCurrentKey != null) l10n.currentKeyLabel(_missingCurrentKey!),
                          if (_missingCurrentLocale != null)
                            l10n.currentLocaleLabel(_missingCurrentLocale!.toUpperCase()),
                        ].join(' · '),
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                    if (_missingTotal > 0) ...[
                      const SizedBox(height: 8),
                      LinearProgressIndicator(value: _missingTotal == 0 ? null : _missingDone / _missingTotal),
                    ],
                    if (_missingError != null && !_translatingMissing) ...[
                      const SizedBox(height: 8),
                      Text(_missingError!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                    ],
                  ],
                ),
              ),
            if (_translatingMissing || _missingStatus != null || _missingError != null) const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    onChanged: (value) => _applyFilter(value),
                    decoration: InputDecoration(labelText: l10n.searchLabel, prefixIcon: const Icon(Icons.search)),
                  ),
                ),
                const SizedBox(width: 12),
                Text(l10n.entryCount(_visibleRecords.length), style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
            const SizedBox(height: 12),
            _LocaleSelection(
              availableLocales: _availableLocales,
              visibleLocales: _visibleLocales,
              onToggleLocale: _toggleLocale,
            ),
            const SizedBox(height: 16),
            Expanded(child: _buildBody()),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    final l10n = context.l10n;
    if (_loading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_error != null) {
      return _ErrorView(
        message: _error!,
        actionLabel: _repository == null ? l10n.openProjectAction : l10n.retryAction,
        isOpenProjectAction: _repository == null,
        onRetry: _repository == null ? _openProjectPicker : _loadData,
      );
    }

    if (_visibleRecords.isEmpty) {
      return Center(child: Text(l10n.noEntriesFound));
    }

    final columns = [
      TrinaColumn(title: 'Key', field: 'key', type: TrinaColumnType.text(), readOnly: true, width: 260),
      ..._visibleLocales.map(
        (locale) => TrinaColumn(
          title: locale.toUpperCase(),
          field: locale,
          type: TrinaColumnType.text(),
          readOnly: true,
          width: 320,
        ),
      ),
    ];

    final rows = _buildRowsData(_visibleRecords);

    final gridKey = ValueKey(_visibleLocales.join(','));

    return Card(
      clipBehavior: Clip.hardEdge,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: TrinaGrid(
          key: gridKey,
          columns: columns,
          rows: rows,
          configuration: const TrinaGridConfiguration(),
          onLoaded: (event) {
            _stateManager = event.stateManager;
            _updateGridRows(_visibleRecords);
          },
          mode: TrinaGridMode.selectWithOneTap,
          onSelected: (event) {
            final row = event.row;
            if (row == null) return;

            final keyCell = row.cells['key'];
            if (keyCell == null) return;
            _openDetail(keyCell.value.toString());
          },
        ),
      ),
    );
  }

  List<TrinaRow> _buildRowsData(List<TranslationRecord> records) {
    return records.map((record) {
      return TrinaRow(
        cells: {
          'key': TrinaCell(value: record.key),
          for (final locale in _visibleLocales) locale: TrinaCell(value: record.values[locale] ?? ''),
        },
      );
    }).toList();
  }

  void _updateGridRows(List<TranslationRecord> records) {
    final manager = _stateManager;
    if (manager == null) return;

    final rows = _buildRowsData(records);
    manager.removeAllRows();
    try {
      manager.appendRows(rows);
    } on Error catch (_) {
      // Package does throw an error because of an internal state, if we remove a column. So we catch it here.
    }
  }
}

class _ProjectHeader extends StatelessWidget {
  const _ProjectHeader({required this.project, required this.onOpenProject});

  final ArbProject? project;
  final VoidCallback onOpenProject;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final project = this.project;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(Icons.account_tree, color: theme.colorScheme.onSurfaceVariant),
          const SizedBox(width: 10),
          Expanded(
            child: project == null
                ? Text(l10n.noProjectOpen, style: theme.textTheme.bodyMedium)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        project.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '${project.usesL10nYaml ? 'l10n.yaml' : l10n.arbFolderType} · ${_relativePath(project.projectRoot, project.arbDirectory)}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                      ),
                    ],
                  ),
          ),
          const SizedBox(width: 12),
          OutlinedButton.icon(
            onPressed: onOpenProject,
            icon: const Icon(Icons.folder_open),
            label: Text(project == null ? l10n.openAction : l10n.switchAction),
          ),
        ],
      ),
    );
  }
}

class _ProjectOption extends StatelessWidget {
  const _ProjectOption({required this.project});

  final ArbProject project;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(project.name, style: theme.textTheme.titleSmall),
        const SizedBox(height: 2),
        Text(
          _relativePath(project.projectRoot, project.arbDirectory),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant),
        ),
      ],
    );
  }
}

String _relativePath(String root, String path) {
  final rootUri = Directory(root).uri.toString();
  final pathUri = Directory(path).uri.toString();
  if (!pathUri.startsWith(rootUri)) return path;

  final relative = Uri.decodeFull(pathUri.substring(rootUri.length));
  if (relative.endsWith('/')) {
    return relative.substring(0, relative.length - 1);
  }
  return relative;
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({
    required this.message,
    required this.actionLabel,
    required this.isOpenProjectAction,
    required this.onRetry,
  });

  final String message;
  final String actionLabel;
  final bool isOpenProjectAction;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(l10n.loadArbFilesFailedTitle, style: theme.textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(message, textAlign: TextAlign.center, style: theme.textTheme.bodyMedium),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: Icon(isOpenProjectAction ? Icons.folder_open : Icons.refresh),
              label: Text(actionLabel),
            ),
          ],
        ),
      ),
    );
  }
}

class _LocaleSelection extends StatelessWidget {
  const _LocaleSelection({required this.availableLocales, required this.visibleLocales, required this.onToggleLocale});

  final Set<String> availableLocales;
  final Set<String> visibleLocales;
  final void Function(String locale) onToggleLocale;

  @override
  Widget build(BuildContext context) {
    final locales = availableLocales.toList()..sort();
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        ...locales.map(
          (locale) => FilterChip(
            label: _LocaleChipLabel(locale: locale),
            selected: visibleLocales.contains(locale),
            onSelected: (value) => onToggleLocale(locale),
          ),
        ),
      ],
    );
  }
}

class _LocaleChipLabel extends StatelessWidget {
  const _LocaleChipLabel({required this.locale});

  final String locale;

  @override
  Widget build(BuildContext context) {
    final iconType = _iconForLocale(locale);
    if (iconType == null) {
      return Text(locale.toUpperCase());
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        LanguageIcon(type: iconType, size: 20, withBorder: false),
        const SizedBox(width: 6),
        Text(locale.toUpperCase()),
      ],
    );
  }

  LanguageIconType? _iconForLocale(String locale) {
    try {
      return LanguageIconType.fromStringValue(locale);
    } catch (_) {
      return null;
    }
  }
}

class _DoNotTranslateDialog extends StatefulWidget {
  const _DoNotTranslateDialog({required this.initialTerms});

  final List<String> initialTerms;

  @override
  State<_DoNotTranslateDialog> createState() => _DoNotTranslateDialogState();
}

class _DoNotTranslateDialogState extends State<_DoNotTranslateDialog> {
  late final TextEditingController _termsController;

  @override
  void initState() {
    super.initState();
    _termsController = TextEditingController(text: widget.initialTerms.join('\n'));
  }

  @override
  void dispose() {
    _termsController.dispose();
    super.dispose();
  }

  void _submit() {
    Navigator.of(context).pop(_parseTerms());
  }

  List<String> _parseTerms() {
    final terms = <String>[];
    final seen = <String>{};
    for (final line in _termsController.text.split(RegExp(r'\r?\n'))) {
      final term = line.trim();
      if (term.isEmpty || !seen.add(term)) continue;
      terms.add(term);
    }
    return terms;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      title: Text(l10n.doNotTranslateTitle),
      content: SizedBox(
        width: 520,
        child: TextField(
          controller: _termsController,
          minLines: 10,
          maxLines: 16,
          decoration: InputDecoration(
            labelText: l10n.termsLabel,
            helperText: l10n.oneLinePerEntry,
            alignLabelWithHint: true,
          ),
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.cancelAction)),
        FilledButton.icon(onPressed: _submit, icon: const Icon(Icons.save), label: Text(l10n.saveAction)),
      ],
    );
  }
}

class _AddLocaleDialog extends StatefulWidget {
  const _AddLocaleDialog({required this.locales});

  final List<LocaleClass> locales;

  @override
  State<_AddLocaleDialog> createState() => _AddLocaleDialogState();
}

class _AddLocaleDialogState extends State<_AddLocaleDialog> {
  final TextEditingController _filterController = TextEditingController();
  late List<LocaleClass> _visibleLocales;

  @override
  void initState() {
    super.initState();
    _visibleLocales = widget.locales;
    _filterController.addListener(_applyFilter);
  }

  @override
  void dispose() {
    _filterController
      ..removeListener(_applyFilter)
      ..dispose();
    super.dispose();
  }

  void _applyFilter() {
    final query = _filterController.text.trim().toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _visibleLocales = widget.locales;
        return;
      }

      _visibleLocales = widget.locales
          .where((localeClass) {
            final iconType = _iconForLocale(localeClass.languageCode);
            final searchableText = [
              localeClass.languageCode,
              localeClass.name,
              iconType?.isoName,
              iconType?.endonym,
            ].whereType<String>().join(' ').toLowerCase();
            return searchableText.contains(query);
          })
          .toList(growable: false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      title: Text(l10n.addLanguageTitle),
      content: SizedBox(
        width: 520,
        height: 520,
        child: Column(
          children: [
            TextField(
              controller: _filterController,
              autofocus: true,
              decoration: InputDecoration(labelText: l10n.filterLabel, prefixIcon: const Icon(Icons.search)),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: _visibleLocales.isEmpty
                  ? Center(child: Text(l10n.noLanguageFound))
                  : ListView.builder(
                      itemCount: _visibleLocales.length,
                      itemBuilder: (context, index) {
                        final localeClass = _visibleLocales[index];
                        return _LocaleOptionTile(
                          localeClass: localeClass,
                          onTap: () => Navigator.of(context).pop(localeClass),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
      actions: [TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.cancelAction))],
    );
  }
}

class _LocaleOptionTile extends StatelessWidget {
  const _LocaleOptionTile({required this.localeClass, required this.onTap});

  final LocaleClass localeClass;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final iconType = _iconForLocale(localeClass.languageCode);
    return ListTile(
      leading: iconType == null ? const Icon(Icons.language) : LanguageIcon(type: iconType, size: 28),
      title: Text(iconType?.endonym ?? localeClass.languageCode.toUpperCase()),
      subtitle: Text([localeClass.languageCode, if (iconType != null) iconType.isoName].join(' · ')),
      onTap: onTap,
    );
  }
}

LanguageIconType? _iconForLocale(String locale) {
  try {
    return LanguageIconType.fromStringValue(locale);
  } catch (_) {
    return null;
  }
}

class _AddTranslationResult {
  const _AddTranslationResult({required this.key, required this.locale, required this.value});

  final String key;
  final String locale;
  final String value;
}

class _AddTranslationDialog extends StatefulWidget {
  const _AddTranslationDialog({required this.availableLocales, required this.existingKeys});

  final List<String> availableLocales;
  final Set<String> existingKeys;

  @override
  State<_AddTranslationDialog> createState() => _AddTranslationDialogState();
}

class _AddTranslationDialogState extends State<_AddTranslationDialog> {
  late String _selectedLocale;
  final TextEditingController _keyController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();
  String? _error;

  @override
  void initState() {
    super.initState();
    _selectedLocale = _initialLocale(widget.availableLocales);
  }

  String _initialLocale(List<String> locales) {
    if (locales.contains('en')) return 'en';
    return locales.first;
  }

  @override
  void dispose() {
    _keyController.dispose();
    _valueController.dispose();
    super.dispose();
  }

  void _submit() {
    final key = _keyController.text.trim();
    final value = _valueController.text.trim();

    if (key.isEmpty || value.isEmpty) {
      setState(() => _error = context.l10n.addTranslationValidationEmpty);
      return;
    }

    if (widget.existingKeys.contains(key)) {
      setState(() => _error = context.l10n.keyAlreadyExists);
      return;
    }

    Navigator.of(context).pop(_AddTranslationResult(key: key, locale: _selectedLocale, value: value));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    return AlertDialog(
      title: Text(l10n.addTextTitle),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _keyController,
              decoration: InputDecoration(labelText: l10n.keyLabel),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              initialValue: _selectedLocale,
              items: widget.availableLocales
                  .map((locale) => DropdownMenuItem(value: locale, child: Text(locale.toUpperCase())))
                  .toList(),
              onChanged: (value) => setState(() {
                if (value != null) _selectedLocale = value;
              }),
              decoration: InputDecoration(labelText: l10n.languageLabel),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _valueController,
              maxLines: 3,
              decoration: InputDecoration(labelText: l10n.textLabel, alignLabelWithHint: true),
            ),
            if (_error != null) ...[
              const SizedBox(height: 8),
              Text(_error!, style: TextStyle(color: theme.colorScheme.error)),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l10n.cancelAction)),
        FilledButton.icon(onPressed: _submit, icon: const Icon(Icons.add), label: Text(l10n.addAction)),
      ],
    );
  }
}
