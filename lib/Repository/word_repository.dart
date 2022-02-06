import 'dart:convert';

import 'package:guesstheword/model/word_model.dart';
import 'package:http/http.dart' as http;

class WordRepository {
  Future<WordModel?> getWord(String firstword) async {
    try {
      var word = WordModel();
      var url = 'https://api.dictionaryapi.dev/api/v2/entries/en/$firstword';
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print(jsonDecode(response.body));
        var s = jsonDecode(response.body) as List;
        word = WordModel.fromJson(s.first as Map<String, dynamic>);
      }
      return word;
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }
}
