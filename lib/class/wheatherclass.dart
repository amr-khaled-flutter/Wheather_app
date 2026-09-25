class Wheatherclass {
  String City_name;
  DateTime date;
  String? image;
  double temp;
  double maxtemp;
  double mintemp;
  String condition;
  Wheatherclass({
    required this.City_name,
    required this.condition,
    required this.date,
    required this.image,
    required this.maxtemp,
    required this.mintemp,
    required this.temp,
  });
  factory Wheatherclass.from_on(json) {
    return Wheatherclass(
      City_name: json["location"]["name"],
      date: DateTime.parse(json["current"]["last_updated"],),
      temp: json["forecast"]["forecastday"][0]['day']["avgtemp_c"],
      condition: json["forecast"]["forecastday"][0]['day']["condition"]['text'],
      image: 'https:${json['current']['condition']['icon']}',
      maxtemp: json["forecast"]["forecastday"][0]['day']['maxtemp_c'],
      mintemp: json["forecast"]["forecastday"][0]['day']['mintemp_c'],
    );
  }
}
