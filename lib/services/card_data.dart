import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_deck_creator/models/mtg_card_response.dart';
import 'package:mtg_deck_creator/services/network.dart';

class CardData {
  Future<MTGCardResponse> getCardData(String cardName) async {
    Map<String, String> qParams = {
      'fuzzy': cardName.replaceAll(RegExp(r'\s+'), '+')
    };
    NetworkHelper networkHelper = NetworkHelper(
        urlPath: 'api.scryfall.com',
        unEncodedPath: '/cards/named',
        queryParameters: qParams,
        headers: {
          'User-Agent': 'MTGDeckScannerApp/1.0',
          'Accept': 'application/json'
        });
    return MTGCardResponse.fromJson(await networkHelper.getData());
  }
}

final cardResponseProvider = Provider<CardData>((ref) => CardData());
