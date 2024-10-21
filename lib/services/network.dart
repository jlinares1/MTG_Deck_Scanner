import 'dart:convert';
import 'package:http/http.dart';

class NetworkHelper {
  NetworkHelper(
      {required this.urlPath,
      required this.unEncodedPath,
      required this.headers,
      this.queryParameters});

  final String urlPath;
  final String unEncodedPath;
  final Map<String, String> headers;
  final Map<String, dynamic>? queryParameters;

  Future getData() async {
    Uri url = Uri.https(urlPath, unEncodedPath, queryParameters);
    Response response = await get(url, headers: headers);
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
      //return jsonDecode(response.body);
    } else {
      throw Exception('${response.statusCode}');
    }
  }
}
