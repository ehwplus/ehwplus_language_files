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

  bool _saving = false;
  String? _error;
  bool _clearOtherLocales = true;
  final Set<String> _translatingLocales = {};
  bool _translatingAll = false;

  @override
  void initState() {
    super.initState();
    final locales = widget.documents.map((doc) => doc.locale).toSet();
    _locales = _orderedLocales(locales);
    _initialValues = Map<String, String>.from(widget.record.values);
    _apiKeyController = TextEditingController(text: _initialApiKey());

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
    super.dispose();
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
        if (mounted) Navigator.of(context).pop(false);
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

          final existing = updatedEntries[widget.record.key];
          updatedEntries[widget.record.key] = (existing ?? ArbEntry(key: widget.record.key, value: targetValue))
              .copyWith(value: targetValue);
        } else {
          if (isChanged) {
            if (newValue.trim().isEmpty) {
              updatedEntries.remove(widget.record.key);
            } else {
              final existing = updatedEntries[widget.record.key];
              updatedEntries[widget.record.key] = (existing ?? ArbEntry(key: widget.record.key, value: newValue))
                  .copyWith(value: newValue);
            }
          }
        }

        final updatedDoc = doc.copyWith(entries: updatedEntries);
        await widget.repository.saveDocument(updatedDoc);
      }

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

  Future<void> _translateLocale(String targetLocale) async {
    final apiKey = _apiKeyController.text.trim();
    if (apiKey.isEmpty) {
      _showSnack('Bitte DeepL API-Key eintragen (DEEPL_AUTH_KEY).');
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
      _error = null;
    });

    final service = DeepLTranslationService(apiKey: apiKey);
    try {
      final translated = await service.translate(text: sourceText, targetLang: targetLocale, sourceLang: sourceLocale);

      if (!mounted) return;
      setState(() {
        _controllers[targetLocale]?.text = translated;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = e.toString();
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
      _error = null;
    });

    for (final locale in targetsToTranslate) {
      final sourceText = _controllers[sourceLocale]?.text.trim() ?? '';
      if (sourceText.isEmpty) continue;

      try {
        final translated = await service.translate(text: sourceText, targetLang: locale, sourceLang: sourceLocale);

        if (!mounted) return;
        setState(() {
          _controllers[locale]?.text = translated;
        });
      } catch (e) {
        if (mounted) {
          setState(() {
            _error = e.toString();
          });
        }
        _showSnack('DeepL: $e');
      }
    }

    service.close();
    if (mounted) {
      setState(() {
        _translatingAll = false;
        _translatingLocales.removeAll(targetsToTranslate);
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
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.record.key),
        actions: [
          _buildApiKeyChip(),
          Row(
            children: [
              Switch(value: _clearOtherLocales, onChanged: (value) => setState(() => _clearOtherLocales = value)),
              Text('Bei Änderung\nandere Werte löschen', style: Theme.of(context).textTheme.labelMedium),
            ],
          ),
          TextButton.icon(
            onPressed: _saving || _translatingAll ? null : _translateAll,
            icon: _translatingAll
                ? const SizedBox(height: 16, width: 16, child: CircularProgressIndicator(strokeWidth: 2))
                : const Icon(Icons.translate),
            label: const Text('Alle übersetzen'),
          ),
          TextButton.icon(
            onPressed: _saving ? null : _save,
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
          if (_error != null) ...[Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error))],
          ..._locales.map(
            (locale) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: TextField(
                controller: _controllers[locale],
                maxLines: null,
                decoration: InputDecoration(
                  labelText: 'Text für $locale',
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
      tooltip: 'Mit DeepL nach $locale übersetzen',
      icon: const Icon(Icons.translate),
      onPressed: _saving || _translatingAll ? null : () => _translateLocale(locale),
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
}
