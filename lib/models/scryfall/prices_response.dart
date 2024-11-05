class PricesResponse {
  final String? usd;
  final String? usdFoil;
  final String? usdEtched;
  final String? eur;
  final String? eurFoil;
  final String? tix;

  PricesResponse(
      {this.usd,
      this.usdFoil,
      this.usdEtched,
      this.eur,
      this.eurFoil,
      this.tix});

  factory PricesResponse.fromJson(Map<String, dynamic> json) => PricesResponse(
        usd: json["usd"],
        usdFoil: json["usd_foil"],
        usdEtched: json["usd_etched"],
        eur: json["eur"],
        eurFoil: json["eur_foil"],
        tix: json["tix"],
      );

  Map<String, dynamic> toJson() => {
        "usd": usd,
        "usd_foil": usdFoil,
        "usd_etched": usdEtched,
        "eur": eur,
        "eur_foil": eurFoil,
        "tix": tix,
      };
}
