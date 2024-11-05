class ImageUrlsResponse {
  final String small;
  final String normal;
  final String large;
  final String png;
  final String artCrop;
  final String borderCrop;

  ImageUrlsResponse(
      {required this.small,
      required this.normal,
      required this.large,
      required this.png,
      required this.artCrop,
      required this.borderCrop});

  factory ImageUrlsResponse.fromJson(Map<String, dynamic> json) =>
      ImageUrlsResponse(
        small: json["small"],
        normal: json["normal"],
        large: json["large"],
        png: json["png"],
        artCrop: json["art_crop"],
        borderCrop: json["border_crop"],
      );

  Map<String, dynamic> toJson() => {
        "small": small,
        "normal": normal,
        "large": large,
        "png": png,
        "art_crop": artCrop,
        "border_crop": borderCrop,
      };
}
