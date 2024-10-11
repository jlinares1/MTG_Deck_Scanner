class RecognitionResponse {
  final String imgPath;
  final String recognizedText;

  RecognitionResponse({required this.imgPath, required this.recognizedText});

  /* overriding the equality operator to allow meaningful comparison between
  RecognitionResponse objects based on their imgPath and recognizedText properties*/
  @override
  bool operator ==(covariant RecognitionResponse other) {
    if (identical(this, other)) return true;

    return other.imgPath == imgPath && other.recognizedText == recognizedText;
  }

  /* ensures that the RecognitionResponse class has a consistent hash code based on 
  imgPath and recognizedText properties. When two objects are considered equal, their hash
  codes will also match, ensuring they behave properly in hash-based collections */
  @override
  int get hashCode => imgPath.hashCode ^ recognizedText.hashCode;
}
