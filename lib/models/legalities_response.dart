class LegalitiesResponse {
  final String standard;
  final String future;
  final String historic;
  final String timeless;
  final String gladiator;
  final String pioneer;
  final String explorer;
  final String modern;
  final String legacy;
  final String pauper;
  final String vintage;
  final String penny;
  final String commander;
  final String oathbreaker;
  final String standardbrawl;
  final String brawl;
  final String alchemy;
  final String paupercommander;
  final String duel;
  final String oldschool;
  final String premodern;
  final String predh;

  LegalitiesResponse(
      {required this.standard,
      required this.future,
      required this.historic,
      required this.timeless,
      required this.gladiator,
      required this.pioneer,
      required this.explorer,
      required this.modern,
      required this.legacy,
      required this.pauper,
      required this.vintage,
      required this.penny,
      required this.commander,
      required this.oathbreaker,
      required this.standardbrawl,
      required this.brawl,
      required this.alchemy,
      required this.paupercommander,
      required this.duel,
      required this.oldschool,
      required this.premodern,
      required this.predh});

  factory LegalitiesResponse.fromJson(Map<String, dynamic> json) =>
      LegalitiesResponse(
        standard: json["standard"],
        future: json["future"],
        historic: json["historic"],
        timeless: json["timeless"],
        gladiator: json["gladiator"],
        pioneer: json["pioneer"],
        explorer: json["explorer"],
        modern: json["modern"],
        legacy: json["legacy"],
        pauper: json["pauper"],
        vintage: json["vintage"],
        penny: json["penny"],
        commander: json["commander"],
        oathbreaker: json["oathbreaker"],
        standardbrawl: json["standardbrawl"],
        brawl: json["brawl"],
        alchemy: json["alchemy"],
        paupercommander: json["paupercommander"],
        duel: json["duel"],
        oldschool: json["oldschool"],
        premodern: json["premodern"],
        predh: json["predh"],
      );

  Map<String, dynamic> toJson() => {
        "standard": standard,
        "future": future,
        "historic": historic,
        "timeless": timeless,
        "gladiator": gladiator,
        "pioneer": pioneer,
        "explorer": explorer,
        "modern": modern,
        "legacy": legacy,
        "pauper": pauper,
        "vintage": vintage,
        "penny": penny,
        "commander": commander,
        "oathbreaker": oathbreaker,
        "standardbrawl": standardbrawl,
        "brawl": brawl,
        "alchemy": alchemy,
        "paupercommander": paupercommander,
        "duel": duel,
        "oldschool": oldschool,
        "premodern": premodern,
        "predh": predh,
      };
}
