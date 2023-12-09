import 'dart:convert';

import 'package:daryouz_clone/components/model/weather_model.dart';
import 'package:http/http.dart' as http;

Future<Weather> GetWeatherDate(String place) async {
  try {
    final queryParameters = {
      "key": '24cf98711784441583c73833230910',
      "q": place,
    };

    final uri = Uri.http('api.weatherapi.com', '/v1/current.json', queryParameters);

    final response = await http.get(uri);
    if (response.statusCode == 200) {
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Can not get weather');
    }
  } catch (e) {
    rethrow;
  }
}
