class ArbEntry {
  const ArbEntry({required this.key, required this.value, this.metadata});

  final String key;
  final dynamic value;
  final Map<String, dynamic>? metadata;

  ArbEntry copyWith({dynamic value, Map<String, dynamic>? metadata}) {
    return ArbEntry(key: key, value: value ?? this.value, metadata: metadata ?? this.metadata);
  }
}
