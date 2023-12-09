import 'package:daryouz_clone/components/model/article_model.dart';

class AllNews {
  // {
  // "source": {
  // "id": null,
  // "name": "01net.com"
  // },
  // "author": "Dimitri Charitsis",
  // "title": "BMW i4 : 1 000 km avec la berline électrique, ça donne quoi ?",
  // "description": "Nous avons testé la plus grande rivale de la Tesla Model 3 sur un long trajet.",
  // "url": "https://www.01net.com/actualites/bmw-i4-1-000-km-avec-la-berline-electrique-ca-donne-quoi.html",
  // "urlToImage": "https://www.01net.com/app/uploads/2023/06/MEA.jpg",
  // "publishedAt": "2023-06-25T07:30:57Z",
  // "content": "Nous avons testé la plus grande rivale de la Tesla Model 3 sur un long trajet. La BMW i4 est lune des berlines électriques les plus réussies du marché, plus quune alternative à Tesla lorsquon dispose… [+8214 chars]"
  // },

  String status;
  int totalResults;
  List articles;

  AllNews({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory AllNews.fromJson(Map<String, dynamic> json) {
    return AllNews(
      articles: json["articles"].map((e) => Article.fromJson(e)).toList(),
      status: json["status"] ?? '',
      totalResults: json["totalResults"] ?? 0,
    );
  }
}
