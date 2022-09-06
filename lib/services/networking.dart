import 'package:http/http.dart' as http;
import 'dart:convert';

const String apiKey = 'b6907d289e10d714a6e88b30761fae22';

class NetworkHelper {
  NetworkHelper({this.url});
  final String url;
  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
