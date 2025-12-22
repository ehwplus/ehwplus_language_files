import 'dart:io';

import 'package:flutter/material.dart';
import 'package:language_files_example/arb_repository.dart';

class ArbOverviewPage extends StatefulWidget {
  const ArbOverviewPage({super.key});

  @override
  State<ArbOverviewPage> createState() => _ArbOverviewPageState();
}

class _ArbOverviewPageState extends State<ArbOverviewPage> {
  final ArbRepository _repository = ArbRepository();
  late Future<List<ArbDocument>> _documentsFuture;

  @override
  void initState() {
    super.initState();
    _documentsFuture = _repository.loadDocuments();
  }

  Future<void> _reload() async {
    setState(() {
      _documentsFuture = _repository.loadDocuments();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ARB-Dateien')),
      floatingActionButton: FloatingActionButton(onPressed: _reload, child: const Icon(Icons.refresh)),
      body: FutureBuilder<List<ArbDocument>>(
        future: _documentsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return _ErrorView(message: snapshot.error.toString(), onRetry: _reload);
          }

          final documents = snapshot.data ?? [];
          if (documents.isEmpty) {
            return _ErrorView(
              message: 'Keine ARB-Dateien im Verzeichnis ${_repository.arbDirectory} gefunden.',
              onRetry: _reload,
            );
          }

          return _ArbDocumentList(documents: documents, directory: _repository.arbDirectory);
        },
      ),
    );
  }
}

class _ArbDocumentList extends StatelessWidget {
  const _ArbDocumentList({required this.documents, required this.directory});

  final List<ArbDocument> documents;
  final String directory;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          'ARB-Verzeichnis: $directory',
          style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant),
        ),
        const SizedBox(height: 12),
        ...documents.map((doc) => _ArbCard(document: doc)),
      ],
    );
  }
}

class _ArbCard extends StatelessWidget {
  const _ArbCard({required this.document});

  final ArbDocument document;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final previewEntries = document.entries.values.take(3);
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: theme.colorScheme.primaryContainer,
                  foregroundColor: theme.colorScheme.onPrimaryContainer,
                  child: Text(document.locale.toUpperCase(), style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 12),
                Expanded(child: Text(_fileName(document.path), style: theme.textTheme.titleMedium)),
                Text('${document.translationCount} Texte', style: theme.textTheme.labelMedium),
              ],
            ),
            const SizedBox(height: 12),
            Text(document.path, style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant)),
            const SizedBox(height: 12),
            if (previewEntries.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Beispieleinträge', style: theme.textTheme.labelLarge),
                  const SizedBox(height: 8),
                  ...previewEntries.map(
                    (entry) => Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text('${entry.key}: ${_asSingleLine(entry.value)}', style: theme.textTheme.bodyMedium),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  String _fileName(String path) {
    final segments = path.split(Platform.pathSeparator);
    return segments.isNotEmpty ? segments.last : path;
  }

  String _asSingleLine(dynamic value) {
    final text = value.toString().replaceAll(RegExp(r'\s+'), ' ').trim();
    if (text.length <= 80) {
      return text;
    }
    return '${text.substring(0, 77)}...';
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
