class Weather {
  final double temperaturaC;
  final double temperaturaF;
  final String condition;

  Weather({this.temperaturaC = 0, this.temperaturaF = 0, this.condition = 'Sunny'});

  factory Weather.fromJson(Map json) {
    return Weather(
      temperaturaC: json['current']['temp_c'],
      temperaturaF: json['current']['temp_f'],
      condition: json['current']['condition']['text'],
    );
  }
}
