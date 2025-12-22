import 'package:ehwplus_language_files/ehwplus_language_files.dart';
import 'package:flutter/material.dart';
import 'package:language_files_example/src/model/arb_document.dart';
import 'package:language_files_example/src/model/translation_record.dart';
import 'package:language_files_example/src/page/translation_detail_page.dart';
import 'package:language_files_example/src/repository/arb_repository.dart';
import 'package:language_files_example/src/widget/language_icon.dart';
import 'package:trina_grid/trina_grid.dart';

class ArbEditorApp extends StatelessWidget {
  const ArbEditorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ARB Editor',
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
  final ArbRepository _repository = ArbRepository();
  final TextEditingController _searchController = TextEditingController();

  List<ArbDocument> _documents = [];
  List<TranslationRecord> _allRecords = [];
  List<TranslationRecord> _visibleRecords = [];
  Set<String> _availableLocales = {};
  Set<String> _visibleLocales = {'en', 'de'};
  TrinaGridStateManager? _stateManager;

  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadData() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final documents = await _repository.loadDocuments();
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
    final record = _allRecords.firstWhere(
      (element) => element.key == key,
      orElse: () => TranslationRecord(key: key, values: const {}),
    );

    final saved = await Navigator.of(context).push<bool>(
      MaterialPageRoute(
        builder: (_) => TranslationDetailPage(record: record, documents: _documents, repository: _repository),
      ),
    );

    if (saved == true) {
      _loadData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ARB-Texte (EN / DE)'),
        actions: [IconButton(tooltip: 'Neu laden', onPressed: _loadData, icon: const Icon(Icons.refresh))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    onChanged: (value) => _applyFilter(value),
                    decoration: const InputDecoration(
                      labelText: 'Filtern nach Text oder Key (alle Sprachen)',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Text('${_visibleRecords.length} Einträge', style: Theme.of(context).textTheme.labelMedium),
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
    if (_loading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_error != null) {
      return _ErrorView(message: _error!, onRetry: _loadData);
    }

    if (_visibleRecords.isEmpty) {
      return const Center(child: Text('Keine Einträge gefunden.'));
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
    manager.appendRows(rows);
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Konnte ARB-Dateien nicht laden', style: theme.textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(message, textAlign: TextAlign.center, style: theme.textTheme.bodyMedium),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Erneut versuchen'),
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
