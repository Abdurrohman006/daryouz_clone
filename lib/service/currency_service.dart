import 'dart:convert' as convert;

import 'package:daryouz_clone/components/model/currency_model.dart';
import 'package:http/http.dart' as http;

// class CurrencyService {
Future<List<Currency>> getAllCurrency() async {
  Uri uri = Uri.parse('https://nbu.uz/en/exchange-rates/json/');
  var response = await http.get(uri);
  if (response.statusCode == 200) {
    List jsonResponse = convert.jsonDecode(response.body);

    // List<Currency> currencies = jsonResponse.map((e) => Currency.fromJson(e)).toList();
    // List<Currency> c = jsonResponse.map((e) => Currency.fromJson(e)).toList();
    List<Currency> currencies = [];
    for (Map eachCurrency in jsonResponse) {
      currencies.add(Currency.fromJson(eachCurrency));
    }
    // return [];
    return currencies;
  }
  return [];
}
// }
