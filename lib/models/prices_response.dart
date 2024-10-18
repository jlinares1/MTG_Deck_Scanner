class PricesResponse {
  final String usd;
  final String usdFoil;
  final String usdEtched;
  final String eur;
  final String eurFoil;
  final String tix;

  PricesResponse(
      {required this.usd,
      required this.usdFoil,
      required this.usdEtched,
      required this.eur,
      required this.eurFoil,
      required this.tix});

  factory PricesResponse.fromjson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'usd': String usd,
        'usd_foil': String usdFoil,
        'usd_etched': String usdEtched,
        'eur': String eur,
        'eur_foil': String eurFoil,
        'tix': String tix,
      } =>
        PricesResponse(
            usd: usd,
            usdFoil: usdFoil,
            usdEtched: usdEtched,
            eur: eur,
            eurFoil: eurFoil,
            tix: tix),
      _ => throw const FormatException('Failed to load prices esponse'),
    };
  }
}
