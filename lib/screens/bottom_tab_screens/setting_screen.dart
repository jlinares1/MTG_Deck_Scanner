import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mtg_deck_creator/models/mtg_card_response.dart';

class SettingScreen extends StatelessWidget {
  static const String id = 'setting_screen';
  const SettingScreen({super.key});

  Future<MTGCardResponse> readJson() async {
    final String response =
        await rootBundle.loadString('assets/sample_data.json');
    return MTGCardResponse.fromJson(response as Map<String, dynamic>);
  }

  @override
  Widget build(BuildContext context) {
    final cardData = readJson() as MTGCardResponse;
    return SafeArea(
        child: Center(
      child: Text('$cardData.name'),
    ));
  }
}
