import 'arb_entry.dart';

class ArbDocument {
  const ArbDocument({required this.locale, required this.path, required this.entries, required this.globalMetadata});

  final String locale;
  final String path;
  final Map<String, ArbEntry> entries;
  final Map<String, dynamic> globalMetadata;

  int get translationCount => entries.length;

  ArbDocument copyWith({Map<String, ArbEntry>? entries, Map<String, dynamic>? globalMetadata}) {
    return ArbDocument(
      locale: locale,
      path: path,
      entries: entries ?? this.entries,
      globalMetadata: globalMetadata ?? this.globalMetadata,
    );
  }
}
