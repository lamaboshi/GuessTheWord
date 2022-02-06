class Phonetic {
  Phonetic({
    this.text,
    this.audio,
  });

  String? text;
  String? audio;
  factory Phonetic.fromJson(Map<String, dynamic> json) => Phonetic(
        text: json["text"] == null ? null : json["text"] as String,
        audio: json["audio"] == null ? null : json["audio"] as String,
      );
}
