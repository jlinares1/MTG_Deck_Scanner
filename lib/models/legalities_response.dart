class LegalitiesResponse {
  final bool standard;
  final bool future;
  final bool historic;
  final bool timeless;
  final bool gladiator;
  final bool pioneer;
  final bool explorer;
  final bool modern;
  final bool legacy;
  final bool pauper;
  final bool vintage;
  final bool penny;
  final bool commander;
  final bool oathbreaker;
  final bool standardbrawl;
  final bool brawl;
  final bool alchemy;
  final bool paupercommander;
  final bool duel;
  final bool oldschool;
  final bool premodern;
  final bool predh;

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

  factory LegalitiesResponse.fromjson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'standard': bool standard,
        'future': bool future,
        'historic': bool historic,
        'timeless': bool timeless,
        'gladiator': bool gladiator,
        'pioneer': bool pioneer,
        'explorer': bool explorer,
        'modern': bool modern,
        'legacy': bool legacy,
        'pauper': bool pauper,
        'vintage': bool vintage,
        'penny': bool penny,
        'commander': bool commander,
        'oathbreaker': bool oathbreaker,
        'standardbrawl': bool standardbrawl,
        'brawl': bool brawl,
        'alchemy': bool alchemy,
        'paupercommander': bool paupercommander,
        'duel': bool duel,
        'oldschool': bool oldschool,
        'premodern': bool premodern,
        'predh': bool predh,
      } =>
        LegalitiesResponse(
            standard: standard,
            future: future,
            historic: historic,
            timeless: timeless,
            gladiator: gladiator,
            pioneer: pioneer,
            explorer: explorer,
            modern: modern,
            legacy: legacy,
            pauper: pauper,
            vintage: vintage,
            penny: penny,
            commander: commander,
            oathbreaker: oathbreaker,
            standardbrawl: standardbrawl,
            brawl: brawl,
            alchemy: alchemy,
            paupercommander: paupercommander,
            duel: duel,
            oldschool: oldschool,
            premodern: premodern,
            predh: predh),
      _ => throw const FormatException('Failed to load legalities response'),
    };
  }
}
