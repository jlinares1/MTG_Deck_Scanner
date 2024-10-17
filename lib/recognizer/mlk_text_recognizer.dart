import 'dart:io';
import 'package:mtg_deck_creator/recognizer/interface/text_recognizer.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

class MLKTextRecognizer extends ITextRecognizer {
  late TextRecognizer recognizer;
  List<String> cardTextList = [];

  MLKTextRecognizer() {
    recognizer = TextRecognizer();
  }

  void dispose() {
    recognizer.close();
  }

  @override
  Future<List<String>> processImage(String imgPath) async {
    final image = InputImage.fromFile(File(imgPath));
    final recognized = await recognizer.processImage(image);
    for (var textLine in recognized.blocks) {
      cardTextList.add(textLine.text);
    }
    return cardTextList;
  }
}
