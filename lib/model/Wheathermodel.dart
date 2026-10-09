
class Wheathermodel {
  String CityName;
  DateTime updateDate;
  double temp;
  double max_temp;
  double min_temp;
  String text;
  String icon;
  Wheathermodel({
    required this.CityName,
    required this.max_temp,
    required this.min_temp,
    required this.temp,
    required this.updateDate,
    required this.icon,
    required this.text,
  });
  factory Wheathermodel.fromJson(json) {
    return Wheathermodel(
      CityName: json['location']['name'],
      max_temp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      min_temp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      updateDate: DateTime.parse(
        json['location']['localtime'],
      ),
      icon: 'https:${json['forecast']['forecastday'][0]['day']['condition']['icon']}',
      text: json['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
