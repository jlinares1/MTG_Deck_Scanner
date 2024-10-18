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

  factory ImageUrlsResponse.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'small': String small,
        'normal': String normal,
        'large': String large,
        'png': String png,
        'art_corp': String artCrop,
        'border_crop': String borderCrop,
      } =>
        ImageUrlsResponse(
            small: small,
            normal: normal,
            large: large,
            png: png,
            artCrop: artCrop,
            borderCrop: borderCrop),
      _ => throw const FormatException('Failed to load image urls response'),
    };
  }
}
