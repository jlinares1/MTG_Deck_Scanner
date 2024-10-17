import 'package:mtg_deck_creator/services/network.dart';

class CardData {
  Future<dynamic> getCardData(String cardName) async {
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
    return await networkHelper.getData();
  }
}
