import 'definition_model.dart';

class Meaning {
  Meaning({
    this.partOfSpeech,
    this.definitions,
  });

  String? partOfSpeech;
  List<Definition>? definitions;
  factory Meaning.fromJson(Map<String, dynamic> json) => Meaning(
        partOfSpeech: json["partOfSpeech"] == null
            ? null
            : json["partOfSpeech"] as String,
        definitions: json["definitions"] == null
            ? null
            : List<Definition>.from(
                (json["definitions"] as Iterable).map(
                  (x) => Definition.fromJson(x as Map<String, dynamic>),
                ),
              ),
      );
}
