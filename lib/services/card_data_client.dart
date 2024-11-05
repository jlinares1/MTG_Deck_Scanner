import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_deck_creator/models/scryfall/mtg_card_response.dart';
import 'package:mtg_deck_creator/services/network.dart';

class CardDataClient {
  ///Returns card data by a name
  Future<MTGCardResponse> getCardDataByName(String cardName) async {
    Map<String, String> qParams = {
      'fuzzy': cardName.replaceAll(RegExp(r'\s+'), '%2B')
    };
    NetworkHelper networkHelper = NetworkHelper(
        urlPath: 'api.scryfall.com',
        unEncodedPath: '/cards/named',
        queryParameters: qParams,
        headers: {
          'User-Agent': 'MTGDeckCreatorApp/1.0',
          'Accept': 'application/json'
        });
    final response = MTGCardResponse.fromJson(await networkHelper.getData());
    return response;
  }

  ///Returns card data by ID
  Future<MTGCardResponse> getCardDataById(String id) async {
    NetworkHelper networkHelper = NetworkHelper(
        urlPath: 'api.scryfall.com',
        unEncodedPath: '/cards/$id',
        headers: {
          'User-Agent': 'MTGDeckCreatorApp/1.0',
          'Accept': 'application/json'
        });
    final response = MTGCardResponse.fromJson(await networkHelper.getData());
    return response;
  }

  ///Returns card data by set & Id
  Future<MTGCardResponse> getCardDataBySet(String id, String set) async {
    Map<String, String> qParams = {'set': set};
    NetworkHelper networkHelper = NetworkHelper(
        urlPath: 'api.scryfall.com',
        unEncodedPath: '/cards/$id',
        queryParameters: qParams,
        headers: {
          'User-Agent': 'MTGDeckCreatorApp/1.0',
          'Accept': 'application/json'
        });
    final response = MTGCardResponse.fromJson(await networkHelper.getData());
    return response;
  }

  ///Returns a random card from API
  Future<MTGCardResponse> getRandomCardData() async {
    NetworkHelper networkHelper = NetworkHelper(
        urlPath: 'api.scryfall.com',
        unEncodedPath: '/cards/random',
        headers: {
          'User-Agent': 'MTGDeckCreatorApp/1.0',
          'Accept': 'application/json'
        });
    final response = MTGCardResponse.fromJson(await networkHelper.getData());
    return response;
  }
}

final cardResponseProvider =
    Provider<CardDataClient>((ref) => CardDataClient());
