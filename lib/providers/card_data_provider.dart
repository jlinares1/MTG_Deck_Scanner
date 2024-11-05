import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_deck_creator/models/scryfall/mtg_card_response.dart';
import 'package:mtg_deck_creator/services/card_data_client.dart';

final cardDataProvider =
    FutureProvider.family<MTGCardResponse, String>((ref, cardName) async {
  return ref.read(cardResponseProvider).getCardDataByName(cardName);
});

final randomCardDataProvider = FutureProvider<MTGCardResponse>((ref) async {
  return ref.read(cardResponseProvider).getRandomCardData();
});
