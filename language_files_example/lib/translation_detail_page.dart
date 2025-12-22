import 'package:flutter/material.dart';
import 'package:ehwplus_language_files/src/model/language_icon_type.dart';

import 'arb_repository.dart';
import 'translation_models.dart';
import 'widget/language_icon.dart';

class TranslationDetailPage extends StatefulWidget {
  const TranslationDetailPage({
    super.key,
    required this.record,
    required this.documents,
    required this.repository,
  });

  final TranslationRecord record;
  final List<ArbDocument> documents;
  final ArbRepository repository;

  @override
  State<TranslationDetailPage> createState() => _TranslationDetailPageState();
}

class _TranslationDetailPageState extends State<TranslationDetailPage> {
  final Map<String, TextEditingController> _controllers = {};
  late final List<String> _locales;

  bool _saving = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    final locales = widget.documents.map((doc) => doc.locale).toSet();
    _locales = _orderedLocales(locales);

    for (final locale in _locales) {
      _controllers[locale] = TextEditingController(
        text: widget.record.values[locale] ?? '',
      );
    }
  }

  @override
  void dispose() {
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

  Future<void> _save() async {
    setState(() {
      _saving = true;
      _error = null;
    });

    try {
      for (final doc in widget.documents) {
        final updatedEntries = Map<String, ArbEntry>.from(doc.entries);
        final controller = _controllers[doc.locale];
        final newValue = controller?.text ?? '';

        final existing = updatedEntries[widget.record.key];
        updatedEntries[widget.record.key] = (existing ??
            ArbEntry(
              key: widget.record.key,
              value: newValue,
            )).copyWith(value: newValue);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.record.key),
        actions: [
          TextButton.icon(
            onPressed: _saving ? null : _save,
            icon: _saving
                ? const SizedBox(
                    height: 16,
                    width: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.save),
            label: const Text('Speichern'),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'ARB-Key: ${widget.record.key}',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 12),
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
                ),
              ),
            ),
          ),
          if (_error != null) ...[
            Text(
              _error!,
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ],
        ],
      ),
    );
  }

  Widget? _buildLocaleIcon(String locale) {
    final iconType = _iconForLocale(locale);
    if (iconType == null) return null;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: LanguageIcon(
        type: iconType,
        size: 24,
        withBorder: false,
      ),
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
