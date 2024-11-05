class PurchaseUrlsResponse {
  final String tcgPlayer;
  final String cardMarket;
  final String cardHoarder;

  PurchaseUrlsResponse(
      {required this.tcgPlayer,
      required this.cardMarket,
      required this.cardHoarder});

  factory PurchaseUrlsResponse.fromJson(Map<String, dynamic> json) =>
      PurchaseUrlsResponse(
        tcgPlayer: json["tcgplayer"],
        cardMarket: json["cardmarket"],
        cardHoarder: json["cardhoarder"],
      );

  Map<String, dynamic> toJson() => {
        "tcgplayer": tcgPlayer,
        "cardmarket": cardMarket,
        "cardhoarder": cardHoarder,
      };
}
