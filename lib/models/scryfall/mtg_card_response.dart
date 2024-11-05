import 'package:mtg_deck_creator/models/scryfall/image_urls_response.dart';
import 'package:mtg_deck_creator/models/scryfall/legalities_response.dart';
import 'package:mtg_deck_creator/models/scryfall/prices_response.dart';
import 'package:mtg_deck_creator/models/scryfall/purchase_urls_response.dart';

//Need to add null safety
class MTGCardResponse {
  final String id;
  final int tcgPlayerId;
  final int cardMarketId;
  final String name;
  final String lang;
  final String releaseAt;
  final String layout;
  final ImageUrlsResponse imageUrls;
  final String manaCost;
  final String typeLine;
  final String oracleText;
  final String power;
  final String toughness;
  final List<String> colors;
  final LegalitiesResponse legalities;
  final bool nonFoil;
  final bool foil;
  final bool promo;
  final bool reprint;
  final bool variation;
  final String setId;
  final String setName;
  final String setType;
  final String collectorNumber;
  final String rarity;
  final String artist;
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
      required this.imageUrls,
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
      required this.setId,
      required this.setName,
      required this.setType,
      required this.collectorNumber,
      required this.rarity,
      required this.artist,
      required this.prices,
      required this.purchaseUrls});

  factory MTGCardResponse.fromJson(Map<String, dynamic> json) =>
      MTGCardResponse(
        id: json["id"],
        tcgPlayerId: json["tcgplayer_id"],
        cardMarketId: json["cardmarket_id"],
        name: json["name"],
        lang: json["lang"],
        releaseAt: json["released_at"],
        layout: json["layout"],
        imageUrls: ImageUrlsResponse.fromJson(json["image_uris"]),
        manaCost: json["mana_cost"],
        typeLine: json["type_line"],
        oracleText: json["oracle_text"],
        power: json["power"],
        toughness: json["toughness"],
        colors: List<String>.from(json["colors"].map((x) => x)),
        legalities: LegalitiesResponse.fromJson(json["legalities"]),
        foil: json["foil"],
        nonFoil: json["nonfoil"],
        promo: json["promo"],
        reprint: json["reprint"],
        variation: json["variation"],
        setId: json["set"],
        setName: json["set_name"],
        setType: json["set_type"],
        collectorNumber: json["collector_number"],
        rarity: json["rarity"],
        artist: json["artist"],
        prices: PricesResponse.fromJson(json["prices"]),
        purchaseUrls: PurchaseUrlsResponse.fromJson(json["purchase_uris"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "tcgplayer_id": tcgPlayerId,
        "cardmarket_id": cardMarketId,
        "name": name,
        "lang": lang,
        "released_at": releaseAt,
        "layout": layout,
        "image_uris": imageUrls.toJson(),
        "mana_cost": manaCost,
        "type_line": typeLine,
        "oracle_text": oracleText,
        "power": power,
        "toughness": toughness,
        "colors": List<dynamic>.from(colors.map((x) => x)),
        "legalities": legalities.toJson(),
        "foil": foil,
        "nonfoil": nonFoil,
        "promo": promo,
        "reprint": reprint,
        "variation": variation,
        "set": setId,
        "set_name": setName,
        "set_type": setType,
        "collector_number": collectorNumber,
        "rarity": rarity,
        "artist": artist,
        "prices": prices.toJson(),
        "purchase_uris": purchaseUrls.toJson(),
      };
}
