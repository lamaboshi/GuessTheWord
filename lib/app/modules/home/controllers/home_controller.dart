import 'package:get/get.dart';
import 'package:guesstheword/Repository/word_repository.dart';
import 'package:guesstheword/model/word_model.dart';

class HomeController extends GetxController {
  final word = WordModel().obs;
  final repo = WordRepository();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> getWordData(String firstword) async {
    final result = await repo.getWord(firstword);
    if (result != null) {
      word(result);
    }
  }

  @override
  void onClose() {}
}
