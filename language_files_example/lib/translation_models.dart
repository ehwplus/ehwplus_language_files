class TranslationRecord {
  const TranslationRecord({
    required this.key,
    required this.values,
  });

  final String key;
  final Map<String, String> values;

  String get english => values['en'] ?? '';
  String get german => values['de'] ?? '';
}
