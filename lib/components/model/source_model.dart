class SourceNews {
  String? id;
  String? name;

  SourceNews({required this.name, required this.id});

  factory SourceNews.fromJson(Map<String, dynamic> json) {
    return SourceNews(
      name: json["name"] ?? 'no data',
      id: json["id"] ?? "",
    );
  }
}
