class Definition {
  Definition({
    this.definition,
    this.example,
    this.synonyms,
    this.antonyms,
  });

  String? definition;
  String? example;
  List<dynamic>? synonyms;
  List<dynamic>? antonyms;
  factory Definition.fromJson(Map<String, dynamic> json) => Definition(
        definition:
            json["definition"] == null ? null : json["definition"] as String,
        example: json["example"] == null ? null : json["example"] as String,
        synonyms: json["synonyms"] == null
            ? null
            : json['synonyms'] == null
                ? []
                : json['synonyms'] as List<dynamic>,
        antonyms: json["antonyms"] == null
            ? null
            : json['antonyms'] == null
                ? []
                : json['antonyms'] as List<dynamic>,
      );
}
