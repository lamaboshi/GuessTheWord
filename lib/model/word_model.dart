import 'Phonetic_model.dart';
import 'meaning_model.dart';

class WordModel {
  WordModel(
      {this.word, this.phonetic, this.phonetics, this.origin, this.meanings});

  final String? word;
  final String? phonetic;
  final List<Phonetic>? phonetics;
  final String? origin;
  final List<Meaning>? meanings;
  factory WordModel.fromJson(Map<String, dynamic> json) => WordModel(
        word: json["word"] == null ? null : json["word"] as String,
        phonetic: json["phonetic"] == null ? null : json["phonetic"] as String,
        phonetics: json["phonetics"] == null
            ? null
            : List<Phonetic>.from(
                (json["phonetics"] as Iterable).map(
                  (x) => Phonetic.fromJson(x as Map<String, dynamic>),
                ),
              ),
        meanings: json["meanings"] == null
            ? null
            : List<Meaning>.from(
                (json["meanings"] as Iterable).map(
                  (x) => Meaning.fromJson(x as Map<String, dynamic>),
                ),
              ),
        origin: json['origin'] == null ? null : json['origin'] as String,
      );
}
