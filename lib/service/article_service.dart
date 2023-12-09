import 'dart:convert' as convert;

import 'package:daryouz_clone/components/model/all_news_model.dart';
import 'package:http/http.dart' as http;

class ArticleService {
  Future<AllNews?> getAllArticle(
      {url =
          "https://newsapi.org/v2/everything?q=apple&from=2023-09-19&to=2023-09-19&sortBy=popularity&apiKey=73fc718f454843fb8188b86daac3fbb8"}) async {
    /////////////////////   Dio uchun   //////////////////////////////
    // Dio dio = Dio();
    // Response response = await dio.get(url);
    // if (response.statusCode == 200) {
    //   print(response);
    // }

    Uri uri = Uri.parse(url);
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);

      // print(response.body);
      // await Future.delayed(Duration(minutes: 10));
      return AllNews.fromJson(jsonResponse);
    }
    return null;
  }
}
