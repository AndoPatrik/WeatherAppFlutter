import 'dart:convert';

import 'package:http/http.dart' as http;

class DataStore {
  static fecthAirVisualAPIbyNearestLocation() async {
    var url =
        'http://api.airvisual.com/v2/nearest_city?key=2ad67ee1-3a6c-41e4-b96c-3bd86fed30ae';
    var response = await http.get(url);

    return response;
  }

  static Future<String> fetchCountries() async {
    final url =
        'http://api.airvisual.com/v2/countries?key=2ad67ee1-3a6c-41e4-b96c-3bd86fed30ae';
    final response = await http.get(url);
    final jsonResponse = jsonDecode(response.body);
    print("Method:" + jsonResponse);
    return jsonResponse;
  }
}
