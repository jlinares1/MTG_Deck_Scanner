import 'package:mtg_deck_creator/models/image_urls_response.dart';
import 'package:mtg_deck_creator/models/legalities_response.dart';
import 'package:mtg_deck_creator/models/prices_response.dart';
import 'package:mtg_deck_creator/models/purchase_urls_response.dart';

class MTGCardResponse {
  final String id;
  final int tcgPlayerId;
  final int cardMarketId;
  final String name;
  final String lang;
  final String releaseAt;
  final String layout;
  final ImageUrlsResponse imageUrl;
  final String manaCost;
  final String typeLine;
  final String oracleText;
  final int power;
  final int toughness;
  final List<String> colors;
  final LegalitiesResponse legalities;
  final bool nonFoil;
  final bool foil;
  final String promo;
  final String reprint;
  final String variation;
  final String set;
  final String setName;
  final String setType;
  final String collectorNumber;
  final String rarity;
  final String artist;
  final String artistId;
  final PricesResponse prices;
  final PurchaseUrlsResponse purchaseUrls;

  MTGCardResponse(
      {required this.id,
      required this.tcgPlayerId,
      required this.cardMarketId,
      required this.name,
      required this.lang,
      required this.releaseAt,
      required this.layout,
      required this.imageUrl,
      required this.manaCost,
      required this.typeLine,
      required this.oracleText,
      required this.power,
      required this.toughness,
      required this.colors,
      required this.legalities,
      required this.nonFoil,
      required this.foil,
      required this.promo,
      required this.reprint,
      required this.variation,
      required this.set,
      required this.setName,
      required this.setType,
      required this.collectorNumber,
      required this.rarity,
      required this.artist,
      required this.artistId,
      required this.prices,
      required this.purchaseUrls});

  factory MTGCardResponse.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': String id,
        'tcgplayer_id': int tcgPlayerId,
        'cardmarket_id': int cardMarketId,
        'name': String name,
        'lang': String lang,
        'release_at': String releaseAt,
        'layout': String layout,
        'image_uris': ImageUrlsResponse imageUrl,
        'mana_cost': String manaCost,
        'type_line': String typeLine,
        'oracle_text': String oracleText,
        'power': int power,
        'toughness': int toughness,
        'colors': List<String> colors,
        'legalities': LegalitiesResponse legalities,
        'nonfoil': bool nonFoil,
        'foil': bool foil,
        'promo': String promo,
        'reprint': String reprint,
        'variation': String variation,
        'set': String set,
        'set_name': String setName,
        'set_type': String setType,
        'collector_number': String collectorNumber,
        'rarity': String rarity,
        'artist': String artist,
        'artist_ids': String artistId,
        'prices': PricesResponse prices,
        'purchase_uris': PurchaseUrlsResponse purchaseUrls
      } =>
        MTGCardResponse(
            id: id,
            tcgPlayerId: tcgPlayerId,
            cardMarketId: cardMarketId,
            name: name,
            lang: lang,
            releaseAt: releaseAt,
            layout: layout,
            imageUrl: imageUrl,
            manaCost: manaCost,
            typeLine: typeLine,
            oracleText: oracleText,
            power: power,
            toughness: toughness,
            colors: colors,
            legalities: legalities,
            nonFoil: nonFoil,
            foil: foil,
            promo: promo,
            reprint: reprint,
            variation: variation,
            set: set,
            setName: setName,
            setType: setType,
            collectorNumber: collectorNumber,
            rarity: rarity,
            artist: artist,
            artistId: artistId,
            prices: prices,
            purchaseUrls: purchaseUrls),
      _ => throw const FormatException('Failed to load MTG Card Response'),
    };
  }
}
