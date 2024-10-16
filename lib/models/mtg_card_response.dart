class MTGCardResponse {
  final double id;
  final String name;
  final String lang;
  final String layout;
  final double tcgplayerId;
  final String imageUrl;
  final String? manaCost;
  final int? power;
  final int? toughness;
  final List<String> colors;
  final bool? nonFoil;
  final bool? foil;
  final String set;
  final String setName;
  final String? flavorText;

  MTGCardResponse(
      {required this.id,
      required this.name,
      required this.lang,
      required this.layout,
      required this.tcgplayerId,
      required this.imageUrl,
      this.manaCost,
      this.power,
      this.toughness,
      required this.colors,
      this.nonFoil,
      this.foil,
      required this.set,
      required this.setName,
      this.flavorText});
}
