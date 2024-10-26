import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_deck_creator/models/mtg_card_response.dart';
import 'package:mtg_deck_creator/services/card_data.dart';

final cardDataProvider =
    FutureProvider.family<MTGCardResponse, String>((ref, cardName) async {
  return ref.read(cardResponseProvider).getCardDataByName(cardName);
});
