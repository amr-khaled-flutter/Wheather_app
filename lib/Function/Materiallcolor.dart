import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  if (condition == 'Sunny' || condition == 'Clear') {
    return Colors.orange;
  }

  if (condition == 'Partly cloudy' ||
      condition == 'Cloudy' ||
      condition == 'Overcast') {
    return Colors.blueGrey;
  }

  if (condition == 'Haze' ||
      condition == 'Dust haze' ||
      condition == 'Blowing dust' ||
      condition == 'Dust storm' ||
      condition == 'Sandstorm' ||
      condition == 'Severe sandstorm' ||
      condition == 'Saharan dust' ||
      condition == 'Dust') {
    return Colors.brown;
  }

  if (condition == 'Mist' ||
      condition == 'Fog' ||
      condition == 'Freezing fog' ||
      condition == 'Smoke' ||
      condition == 'Smoky haze' ||
      condition == 'Smog' ||
      condition == 'Severe smog') {
    return Colors.grey;
  }

  if (condition == 'Patchy rain possible' ||
      condition == 'Patchy light drizzle' ||
      condition == 'Light drizzle' ||
      condition == 'Freezing drizzle' ||
      condition == 'Heavy freezing drizzle' ||
      condition == 'Patchy light rain' ||
      condition == 'Light rain' ||
      condition == 'Moderate rain at times' ||
      condition == 'Moderate rain' ||
      condition == 'Heavy rain at times' ||
      condition == 'Heavy rain' ||
      condition == 'Light freezing rain' ||
      condition == 'Moderate or heavy freezing rain' ||
      condition == 'Light rain shower' ||
      condition == 'Moderate or heavy rain shower' ||
      condition == 'Torrential rain shower') {
    return Colors.indigo;
  }

  if (condition == 'Patchy snow possible' ||
      condition == 'Blowing snow' ||
      condition == 'Blizzard' ||
      condition == 'Patchy light snow' ||
      condition == 'Light snow' ||
      condition == 'Patchy moderate snow'||
      condition == 'Moderate snow' ||
      condition == 'Patchy heavy snow'||
      condition == 'Heavy snow' ||
      condition == 'Light snow showers' ||
      condition == 'Moderate or heavy snow showers') {
    return Colors.lightBlue;
  }

  if (condition == 'Patchy sleet possible' ||
      condition == 'Light sleet' ||
      condition == 'Moderate or heavy sleet' ||
      condition == 'Light sleet showers' ||
      condition == 'Moderate or heavy sleet showers') {
    return Colors.cyan;
  }

  if (condition == 'Ice pellets' ||
      condition == 'Light showers of ice pellets' ||
      condition == 'Moderate or heavy showers of ice pellets' ||
      condition == 'Patchy freezing drizzle possible') {
    return Colors.blue;
  }

  if (condition == 'Thundery outbreaks possible' ||
      condition == 'Patchy light rain with thunder' ||
      condition == 'Moderate or heavy rain with thunder' ||
      condition == 'Patchy light snow with thunder' ||
      condition == 'Moderate or heavy snow with thunder') {
    return Colors.deepPurple;
  }

  return Colors.blue;
}
