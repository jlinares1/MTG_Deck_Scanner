class PurchaseUrlsResponse {
  final String tcgPlayer;
  final String cardMarket;
  final String cardHoarder;

  PurchaseUrlsResponse(
      {required this.tcgPlayer,
      required this.cardMarket,
      required this.cardHoarder});

  factory PurchaseUrlsResponse.fromjson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'tcg_player': String tcgPlayer,
        'card_market': String cardMarket,
        'card_hoarder': String cardHoarder,
      } =>
        PurchaseUrlsResponse(
            tcgPlayer: tcgPlayer,
            cardMarket: cardMarket,
            cardHoarder: cardHoarder),
      _ => throw const FormatException('Failed to load purchase urls response'),
    };
  }
}
