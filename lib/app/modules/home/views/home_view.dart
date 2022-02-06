import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:guesstheword/Seeds/word_seeds.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listWord = WordSeeds().seedes;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Obx(() => Center(
            child: Column(
              children: [
                TextButton(
                    onPressed: () {
                      controller.getWordData(listWord.first);
                    },
                    child: Text('lama')),
                Column(
                  children: [
                    Text(
                      controller.word.value.word != null
                          ? controller.word().word!
                          : '',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      controller.word.value.word != null
                          ? controller.word().meanings!.first.partOfSpeech!
                          : '',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
