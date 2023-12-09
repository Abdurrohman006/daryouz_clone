import 'source_model.dart';

class Article {
  SourceNews? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: SourceNews.fromJson(json["source"] ?? {}),
      author: json["author"] ?? 'NoBody',
      title: json["title"] ?? 'no data',
      description: json["description"] ?? 'no data',
      url: json["url"] ?? '',
      urlToImage: json["urlToImage"] ??
          'https://cdn.pixabay.com/photo/2015/02/15/09/33/news-636978_1280.jpg',
      publishedAt: json["publishedAt"] ?? 'no data',
      content: json["content"] ?? 'no content',
    );
  }
}
