import 'dart:io';

import 'package:ehwplus_language_files/src/model/language_icon_type.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../model/arb_document.dart';
import '../model/arb_entry.dart';
import '../model/translation_record.dart';
import '../repository/arb_repository.dart';
import '../service/deepl_translation_service.dart';
import '../widget/language_icon.dart';

class TranslationDetailPage extends StatefulWidget {
  const TranslationDetailPage({super.key, required this.record, required this.documents, required this.repository});

  final TranslationRecord record;
  final List<ArbDocument> documents;
  final ArbRepository repository;

  @override
  State<TranslationDetailPage> createState() => _TranslationDetailPageState();
}

class _TranslationDetailPageState extends State<TranslationDetailPage> {
  final Map<String, TextEditingController> _controllers = {};
  late final List<String> _locales;
  late final Map<String, String> _initialValues;
  late final TextEditingController _apiKeyController;
  late String _currentKey;
  late final ValueNotifier<bool> _quotaNotifier;

  bool _saving = false;
  bool _renaming = false;
  String? _error;
  bool _clearOtherLocales = true;
  final Set<String> _translatingLocales = {};
  bool _translatingAll = false;
  bool _deleting = false;
  bool _didMutate = false;
  bool _quotaExceeded = false;
  String? _statusMessage;
  int _batchTotal = 0;
  int _batchDone = 0;

  @override
  void initState() {
    super.initState();
    final locales = widget.documents.map((doc) => doc.locale).toSet();
    _locales = _orderedLocales(locales);
    _initialValues = Map<String, String>.from(widget.record.values);
    _apiKeyController = TextEditingController(text: _initialApiKey());
    _currentKey = widget.record.key;
    _quotaNotifier = widget.repository.quotaExceeded;
    _quotaExceeded = _quotaNotifier.value;
    _quotaNotifier.addListener(_handleQuotaChange);

    for (final locale in _locales) {
      _controllers[locale] = TextEditingController(text: widget.record.values[locale] ?? '');
    }
  }

  @override
  void dispose() {
    _apiKeyController.dispose();
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    _quotaNotifier.removeListener(_handleQuotaChange);
    super.dispose();
  }

  void _handleQuotaChange() {
    if (!mounted) return;
    setState(() {
      _quotaExceeded = _quotaNotifier.value;
    });
  }

  List<String> _orderedLocales(Set<String> locales) {
    final ordered = <String>[];
    if (locales.contains('en')) ordered.add('en');
    if (locales.contains('de')) ordered.add('de');
    final rest = locales.where((l) => l != 'en' && l != 'de').toList()..sort();
    ordered.addAll(rest);
    return ordered;
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

  Future<void> _save() async {
    setState(() {
      _saving = true;
      _error = null;
    });

    try {
      final changedLocales = <String>{};
      for (final entry in _controllers.entries) {
        final oldValue = _initialValues[entry.key] ?? '';
        final newValue = entry.value.text;
        if (newValue != oldValue) {
          changedLocales.add(entry.key);
        }
      }

      if (changedLocales.isEmpty) {
        if (mounted) Navigator.of(context).pop(_didMutate);
        return;
      }

      for (final doc in widget.documents) {
        final updatedEntries = Map<String, ArbEntry>.from(doc.entries);
        final controller = _controllers[doc.locale];
        final newValue = controller?.text ?? '';

        final isChanged = changedLocales.contains(doc.locale);
        if (_clearOtherLocales) {
          final shouldClear = _clearOtherLocales && !changedLocales.contains(doc.locale);
          final targetValue = shouldClear ? '' : newValue;

          final existing = updatedEntries[_currentKey];
          updatedEntries[_currentKey] = (existing ?? ArbEntry(key: _currentKey, value: targetValue))
              .copyWith(value: targetValue);
        } else {
          if (isChanged) {
            if (newValue.trim().isEmpty) {
              updatedEntries.remove(_currentKey);
            } else {
              final existing = updatedEntries[_currentKey];
              updatedEntries[_currentKey] = (existing ?? ArbEntry(key: _currentKey, value: newValue))
                  .copyWith(value: newValue);
            }
          }
        }

        final updatedDoc = doc.copyWith(entries: updatedEntries);
        await widget.repository.saveDocument(updatedDoc);
      }

      await _regenerateLocalizations();
      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } catch (e) {
      setState(() {
        _error = e.toString();
      });
    } finally {
      if (mounted) {
        setState(() {
          _saving = false;
        });
      }
    }
  }

  Future<void> _persistLocales(Set<String> locales) async {
    for (var i = 0; i < widget.documents.length; i += 1) {
      final doc = widget.documents[i];
      if (!locales.contains(doc.locale)) continue;
      final controller = _controllers[doc.locale];
      if (controller == null) continue;
      final value = controller.text;
      if (value.trim().isEmpty) continue;

      final updatedEntries = Map<String, ArbEntry>.from(doc.entries);
      final existing = updatedEntries[_currentKey];
      updatedEntries[_currentKey] =
          (existing ?? ArbEntry(key: _currentKey, value: value)).copyWith(value: value);

      final updatedDoc = doc.copyWith(entries: updatedEntries);
      await widget.repository.saveDocument(updatedDoc);

      widget.documents[i] = updatedDoc;

      _initialValues[doc.locale] = value;
    }

    if (mounted) {
      setState(() {
        _didMutate = true;
      });
    }
  }

  Future<void> _deleteKey() async {
    if (_saving || _deleting || _translatingAll || _renaming) return;

    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Key löschen?'),
        content: Text('Soll der Key "$_currentKey" aus allen ARB-Dateien entfernt werden?'),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(false), child: const Text('Abbrechen')),
          FilledButton.icon(
            onPressed: () => Navigator.of(context).pop(true),
            icon: const Icon(Icons.delete),
            label: const Text('Löschen'),
          ),
        ],
      ),
    );

    if (confirm != true) return;

    setState(() {
      _deleting = true;
      _error = null;
    });

    try {
      var removed = false;
      for (final doc in widget.documents) {
        if (!doc.entries.containsKey(_currentKey)) continue;
        final updatedEntries = Map<String, ArbEntry>.from(doc.entries)..remove(_currentKey);
        final updatedDoc = doc.copyWith(entries: updatedEntries);
        await widget.repository.saveDocument(updatedDoc);
        removed = true;
      }

      if (removed) {
        await _regenerateLocalizations();
      }

      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
        });
      }
    } finally {
      if (mounted) {
        setState(() {
          _deleting = false;
        });
      }
    }
  }

  Future<void> _translateLocale(String targetLocale) async {
    final apiKey = _apiKeyController.text.trim();
    if (apiKey.isEmpty) {
      _showSnack('Bitte DeepL API-Key eintragen (DEEPL_AUTH_KEY).');
      return;
    }
    if (_quotaExceeded) {
      _showSnack('DeepL-Quota erreicht. Übersetzung nicht möglich.');
      return;
    }

    final sourceLocale = _findSourceLocale(targetLocale);
    if (sourceLocale == null) {
      _showSnack('Keine Quellsprache mit Text gefunden.');
      return;
    }

    final sourceText = _controllers[sourceLocale]?.text.trim() ?? '';
    if (sourceText.isEmpty) {
      _showSnack('Quelltext für $sourceLocale ist leer.');
      return;
    }

    setState(() {
      _translatingLocales.add(targetLocale);
      _statusMessage = 'Übersetze nach ${_localeLabel(targetLocale)}...';
      _batchTotal = 0;
      _batchDone = 0;
      _error = null;
    });

    final service = DeepLTranslationService(apiKey: apiKey);
    try {
      final translated = await service.translate(text: sourceText, targetLang: targetLocale, sourceLang: sourceLocale);

      if (!mounted) return;
      setState(() {
        _controllers[targetLocale]?.text = translated;
        _statusMessage = 'Übersetzung für ${_localeLabel(targetLocale)} gespeichert.';
      });
      await _persistLocales({targetLocale});
      await _regenerateLocalizations();
    } on DeepLQuotaExceededException catch (e) {
      widget.repository.markQuotaExceeded();
      if (mounted) {
        setState(() {
          _statusMessage = 'Abgebrochen: DeepL-Quota erreicht.';
        });
      }
      _showSnack('DeepL-Quota erreicht: $e');
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = e.toString();
        _statusMessage = 'Fehler bei der Übersetzung.';
      });
      _showSnack('DeepL: $e');
    } finally {
      service.close();
      if (mounted) {
        setState(() {
          _translatingLocales.remove(targetLocale);
        });
      }
    }
  }

  Future<void> _translateAll() async {
    final apiKey = _apiKeyController.text.trim();
    if (apiKey.isEmpty) {
      _showSnack('Bitte DeepL API-Key eintragen (DEEPL_AUTH_KEY).');
      return;
    }
    if (_quotaExceeded) {
      _showSnack('DeepL-Quota erreicht. Übersetzung nicht möglich.');
      return;
    }

    final sourceLocale = _findSourceLocaleForAll();
    if (sourceLocale == null) {
      _showSnack('Keine Quellsprache mit Text gefunden.');
      return;
    }

    final service = DeepLTranslationService(apiKey: apiKey);
    final targets = _locales.where((locale) => locale != sourceLocale).toList();
    final targetsToTranslate = targets.where((locale) => (_controllers[locale]?.text.trim() ?? '').isEmpty).toList();

    if (targetsToTranslate.isEmpty) {
      _showSnack('Alle Zielsprachen haben bereits einen Text.');
      return;
    }

    setState(() {
      _translatingAll = true;
      _translatingLocales.addAll(targetsToTranslate);
      _batchTotal = targetsToTranslate.length;
      _batchDone = 0;
      _statusMessage = 'Starte Übersetzung (${targetsToTranslate.length} Sprachen)...';
      _error = null;
    });

    var didTranslate = false;
    for (final locale in targetsToTranslate) {
      final sourceText = _controllers[sourceLocale]?.text.trim() ?? '';
      if (sourceText.isEmpty) continue;

      try {
        if (mounted) {
          setState(() {
            _statusMessage = 'Übersetze ${locale.toUpperCase()} (${_batchDone + 1}/$_batchTotal)';
          });
        }
        final translated = await service.translate(text: sourceText, targetLang: locale, sourceLang: sourceLocale);

        if (!mounted) return;
        setState(() {
          _controllers[locale]?.text = translated;
          _batchDone += 1;
        });
        await _persistLocales({locale});
        didTranslate = true;
      } on DeepLQuotaExceededException catch (e) {
        widget.repository.markQuotaExceeded();
        if (mounted) {
          setState(() {
            _statusMessage = 'Abgebrochen: DeepL-Quota erreicht.';
          });
        }
        _showSnack('DeepL-Quota erreicht: $e');
        break;
      } catch (e) {
        if (mounted) {
          setState(() {
            _error = e.toString();
            _statusMessage = 'Fehler bei ${locale.toUpperCase()}.';
          });
        }
        _showSnack('DeepL: $e');
      }
    }

    service.close();
    if (didTranslate) {
      await _regenerateLocalizations();
    }
    if (mounted) {
      setState(() {
        _translatingAll = false;
        _translatingLocales.removeAll(targetsToTranslate);
        if (!_quotaExceeded && didTranslate) {
          _statusMessage = 'Übersetzung abgeschlossen.';
        }
      });
    }
  }

  String? _findSourceLocale(String targetLocale) {
    final ordered = <String>['en', 'de', ..._locales];
    final seen = <String>{};
    for (final locale in ordered) {
      if (locale == targetLocale) continue;
      if (!seen.add(locale)) continue;
      final text = _controllers[locale]?.text.trim();
      if (text != null && text.isNotEmpty) {
        return locale;
      }
    }
    return null;
  }

  String? _findSourceLocaleForAll() {
    final ordered = <String>['en', 'de', ..._locales];
    final seen = <String>{};
    for (final locale in ordered) {
      if (!seen.add(locale)) continue;
      final text = _controllers[locale]?.text.trim();
      if (text != null && text.isNotEmpty) {
        return locale;
      }
    }
    return null;
  }

  void _showSnack(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> _renameKey() async {
    if (_saving || _deleting || _translatingAll || _renaming) return;

    final controller = TextEditingController(text: _currentKey);
    String? errorText;

    final newKey = await showDialog<String>(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: const Text('Key bearbeiten'),
            content: TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Key',
                errorText: errorText,
              ),
            ),
            actions: [
              TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Abbrechen')),
              FilledButton.icon(
                onPressed: () {
                  final value = controller.text.trim();
                  if (value.isEmpty) {
                    setState(() => errorText = 'Key darf nicht leer sein.');
                    return;
                  }
                  if (value == _currentKey) {
                    Navigator.of(context).pop();
                    return;
                  }
                  final exists = widget.documents.any((doc) => doc.entries.containsKey(value));
                  if (exists) {
                    setState(() => errorText = 'Key existiert bereits.');
                    return;
                  }
                  Navigator.of(context).pop(value);
                },
                icon: const Icon(Icons.save),
                label: const Text('Speichern'),
              ),
            ],
          );
        },
      ),
    );

    controller.dispose();

    if (newKey == null || newKey == _currentKey) return;

    setState(() {
      _renaming = true;
      _error = null;
    });

    try {
      for (final doc in widget.documents) {
        final existing = doc.entries[_currentKey];
        if (existing == null) continue;
        final updatedEntries = Map<String, ArbEntry>.from(doc.entries)
          ..remove(_currentKey)
          ..[newKey] = ArbEntry(key: newKey, value: existing.value, metadata: existing.metadata);
        await widget.repository.saveDocument(doc.copyWith(entries: updatedEntries));
      }

      await _regenerateLocalizations();
      if (mounted) {
        setState(() {
          _currentKey = newKey;
          _didMutate = true;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() => _error = e.toString());
      }
    } finally {
      if (mounted) {
        setState(() {
          _renaming = false;
        });
      }
    }
  }

  Future<void> _regenerateLocalizations() async {
    try {
      final ran = await widget.repository.regenerateDartFiles();
      if (ran && mounted) {
        _showSnack('Dart-Dateien wurden neu generiert.');
      }
    } catch (e) {
      if (mounted) {
        _showSnack('Regenerierung fehlgeschlagen: $e');
      }
    }
  }

  Widget _buildApiKeyChip() {
    final hasKey = _apiKeyController.text.trim().isNotEmpty;
    return InputChip(
      avatar: const Icon(Icons.vpn_key),
      label: Text(hasKey ? 'DeepL-Key gesetzt' : 'DeepL-Key fehlt'),
      selected: hasKey,
      onPressed: _saving || _translatingAll ? null : _openApiKeyDialog,
    );
  }

  Future<void> _openApiKeyDialog() async {
    final dialogController = TextEditingController(text: _apiKeyController.text);
    var obscure = true;

    final result = await showDialog<String>(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: const Text('DeepL API-Key'),
            content: TextField(
              controller: dialogController,
              obscureText: obscure,
              decoration: InputDecoration(
                labelText: 'DeepL API-Key',
                suffixIcon: IconButton(
                  icon: Icon(obscure ? Icons.visibility_off : Icons.visibility),
                  onPressed: () => setState(() => obscure = !obscure),
                ),
              ),
            ),
            actions: [
              TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Abbrechen')),
              FilledButton(
                onPressed: () => Navigator.of(context).pop(dialogController.text.trim()),
                child: const Text('Speichern'),
              ),
            ],
          );
        },
      ),
    );

    dialogController.dispose();

    if (result != null) {
      setState(() {
        _apiKeyController.text = result;
      });
      widget.repository.resetQuotaExceeded();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (!_didMutate) return true;
        Navigator.of(context).pop(true);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: _buildEditableTitle(),
          actions: [
            _buildApiKeyChip(),
            Row(
              children: [
                Switch(value: _clearOtherLocales, onChanged: (value) => setState(() => _clearOtherLocales = value)),
                Text('Bei Änderung\nandere Werte löschen', style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
            IconButton(
              tooltip: 'Key löschen',
              onPressed: _saving || _deleting || _translatingAll || _renaming ? null : _deleteKey,
              icon: _deleting
                  ? const SizedBox(height: 16, width: 16, child: CircularProgressIndicator(strokeWidth: 2))
                  : const Icon(Icons.delete),
            ),
            TextButton.icon(
              onPressed: _saving || _translatingAll || _renaming || _quotaExceeded ? null : _translateAll,
              icon: _translatingAll
                  ? const SizedBox(height: 16, width: 16, child: CircularProgressIndicator(strokeWidth: 2))
                  : const Icon(Icons.translate),
              label: const Text('Alle übersetzen'),
            ),
            TextButton.icon(
              onPressed: _saving || _renaming ? null : _save,
              icon: _saving
                  ? const SizedBox(height: 16, width: 16, child: CircularProgressIndicator(strokeWidth: 2))
                  : const Icon(Icons.save),
              label: const Text('Speichern'),
            ),
          ],
        ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (_error != null && !_translatingAll && _translatingLocales.isEmpty)
            ...[Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error))],
          if (_statusMessage != null || _translatingAll || _translatingLocales.isNotEmpty)
            Container(
              margin: const EdgeInsets.only(bottom: 16),
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
                      if (_translatingAll || _translatingLocales.isNotEmpty) ...[
                        const SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                        const SizedBox(width: 8),
                      ] else
                        Icon(Icons.info, color: Theme.of(context).colorScheme.onSurfaceVariant),
                      Expanded(
                        child: Text(
                          _statusMessage ?? 'Status',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      if (_batchTotal > 0)
                        Text(
                          '${_batchDone.clamp(0, _batchTotal)}/$_batchTotal',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                    ],
                  ),
                  if (_batchTotal > 0) ...[
                    const SizedBox(height: 8),
                    LinearProgressIndicator(value: _batchDone / _batchTotal),
                  ],
                ],
              ),
            ),
          ..._locales.map(
            (locale) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
                child: TextField(
                  controller: _controllers[locale],
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Text für ${_localeLabel(locale)}',
                    alignLabelWithHint: true,
                    border: const OutlineInputBorder(),
                    prefixIcon: _buildLocaleIcon(locale),
                    suffixIcon: _buildTranslateAction(locale),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTranslateAction(String locale) {
    if (_translatingLocales.contains(locale)) {
      return const Padding(
        padding: EdgeInsets.all(12),
        child: SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2)),
      );
    }

    return IconButton(
      tooltip: 'Mit DeepL nach ${_localeLabel(locale)} übersetzen',
      icon: const Icon(Icons.translate),
      onPressed: _saving || _translatingAll || _quotaExceeded ? null : () => _translateLocale(locale),
    );
  }

  Widget? _buildLocaleIcon(String locale) {
    final iconType = _iconForLocale(locale);
    if (iconType == null) return null;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: LanguageIcon(type: iconType, size: 24, withBorder: false),
    );
  }

  LanguageIconType? _iconForLocale(String locale) {
    try {
      return LanguageIconType.fromStringValue(locale);
    } catch (_) {
      return null;
    }
  }

  String _localeLabel(String locale) {
    final type = _iconForLocale(locale);
    if (type == null) return locale;
    return '${type.isoName} (${type.fileName})';
  }

  Widget _buildEditableTitle() {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(4),
      onTap: _saving || _deleting || _translatingAll || _renaming ? null : _renameKey,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(
              _currentKey,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleLarge,
            ),
          ),
          const SizedBox(width: 6),
          Icon(
            Icons.edit,
            size: 18,
            color: theme.colorScheme.onSurfaceVariant,
          ),
          if (_renaming) ...[
            const SizedBox(width: 8),
            const SizedBox(width: 14, height: 14, child: CircularProgressIndicator(strokeWidth: 2)),
          ],
        ],
      ),
    );
  }
}
