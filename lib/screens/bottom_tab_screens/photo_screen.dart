import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mtg_deck_creator/recognizer/mlk_text_recognizer.dart';
import 'package:mtg_deck_creator/models/scryfall/recognition_response.dart';
import 'package:mtg_deck_creator/recognizer/interface/text_recognizer.dart';
import 'package:mtg_deck_creator/screens/card_results_screen.dart';

class PhotoScreen extends StatefulWidget {
  static const String id = 'photo_screen';
  const PhotoScreen({super.key});

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  late ImagePicker _picker;
  late ITextRecognizer _recognizer;
  late RecognitionResponse response;

  @override
  void initState() {
    super.initState();
    _picker = ImagePicker();
    _recognizer = MLKTextRecognizer();
  }

  @override
  void dispose() {
    super.dispose();
    if (_recognizer is MLKTextRecognizer) {
      (_recognizer as MLKTextRecognizer).dispose();
    }
  }

  Future<String?> obtainImage(ImageSource source) async {
    final file = await _picker.pickImage(source: source);
    return file?.path;
  }

  void processImage(String imgPath) async {
    final recognizedText = await _recognizer.processImage(imgPath);
    setState(() {
      response =
          RecognitionResponse(imgPath: imgPath, recognizedText: recognizedText);
      if (response.recognizedText[0].isNotEmpty) {
        context.pushNamed(CardResultsScreen.id,
            extra: response.recognizedText[0]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
            onPressed: () async {
              final imgPath = await obtainImage(ImageSource.camera);
              //need to add error handler for null imgPath
              if (imgPath == null) return;
              processImage(imgPath);
            },
            icon: const Icon(Icons.camera)),
      ),
    );
  }
}
