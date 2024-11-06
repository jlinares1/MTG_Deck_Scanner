import 'package:mtg_deck_creator/models/scryfall/mtg_card_response.dart';

class DeckCollection {
  final String userId;
  final String deckName;
  final String gameType;
  final int cardTotal;
  final bool allUniqueCards;
  final DateTime lastUpdated;
  final List<String> colors;
  final MTGCardResponse? commander;
  final List<MTGCardResponse>? creaturesList;
  final List<MTGCardResponse>? sorceriesList;
  final List<MTGCardResponse>? artifactsList;
  final List<MTGCardResponse>? instantsList;
  final List<MTGCardResponse>? planeswalkersList;
  final List<MTGCardResponse>? enchantmentsList;
  final List<MTGCardResponse>? landsList;
  final List<MTGCardResponse>? sideboard;

  DeckCollection(
      {required this.userId,
      required this.deckName,
      required this.gameType,
      required this.cardTotal,
      required this.lastUpdated,
      required this.allUniqueCards,
      required this.colors,
      this.commander,
      this.creaturesList,
      this.sorceriesList,
      this.artifactsList,
      this.instantsList,
      this.planeswalkersList,
      this.enchantmentsList,
      this.landsList,
      this.sideboard});

  factory DeckCollection.fromJson(Map<String, dynamic> json) => DeckCollection(
        userId: json["userId"],
        deckName: json["deckName"],
        gameType: json["gameType"],
        cardTotal: json["cardTotal"],
        allUniqueCards: json["allUniqueCards"],
        lastUpdated: DateTime.parse(json["lastUpdated"]),
        colors: List<String>.from(json["colors"].map((x) => x)),
        commander: json["commander"] == null
            ? null
            : MTGCardResponse.fromJson(json["commander"]),
        creaturesList: json["creaturesList"] == null
            ? []
            : List<MTGCardResponse>.from(json["creaturesList"]!.map((x) => x)),
        sorceriesList: json["sorceriesList"] == null
            ? []
            : List<MTGCardResponse>.from(json["sorceriesList"]!.map((x) => x)),
        artifactsList: json["artifactsList"] == null
            ? []
            : List<MTGCardResponse>.from(json["artifactsList"]!.map((x) => x)),
        instantsList: json["instantsList"] == null
            ? []
            : List<MTGCardResponse>.from(json["instantsList"]!.map((x) => x)),
        planeswalkersList: json["planeswalkersList"] == null
            ? []
            : List<MTGCardResponse>.from(
                json["planeswalkersList"]!.map((x) => x)),
        enchantmentsList: json["enchantmentsList"] == null
            ? []
            : List<MTGCardResponse>.from(
                json["enchantmentsList"]!.map((x) => x)),
        landsList: json["landsList"] == null
            ? []
            : List<MTGCardResponse>.from(json["landsList"]!.map((x) => x)),
        sideboard: json["sideboard"] == null
            ? []
            : List<MTGCardResponse>.from(json["sideboard"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "deckName": deckName,
        "gameType": gameType,
        "cardTotal": cardTotal,
        "allUniqueCards": allUniqueCards,
        "lastUpdated":
            "${lastUpdated.year.toString().padLeft(4, '0')}-${lastUpdated.month.toString().padLeft(2, '0')}-${lastUpdated.day.toString().padLeft(2, '0')}",
        "colors": List<dynamic>.from(colors.map((x) => x)),
        "commander": commander?.toJson(),
        "creaturesList": creaturesList == null
            ? []
            : List<dynamic>.from(creaturesList!.map((x) => x)),
        "sorceriesList": sorceriesList == null
            ? []
            : List<dynamic>.from(sorceriesList!.map((x) => x)),
        "artifactsList": artifactsList == null
            ? []
            : List<dynamic>.from(artifactsList!.map((x) => x)),
        "instantsList": instantsList == null
            ? []
            : List<dynamic>.from(instantsList!.map((x) => x)),
        "planeswalkersList": planeswalkersList == null
            ? []
            : List<dynamic>.from(planeswalkersList!.map((x) => x)),
        "enchantmentsList": enchantmentsList == null
            ? []
            : List<dynamic>.from(enchantmentsList!.map((x) => x)),
        "landsList": landsList == null
            ? []
            : List<dynamic>.from(landsList!.map((x) => x)),
        "sideboard": sideboard == null
            ? []
            : List<dynamic>.from(sideboard!.map((x) => x)),
      };
}
