import 'package:dio/dio.dart';
import 'package:wheather_app2/model/Wheathermodel.dart';

class Getwheatherservice {
  Future<Wheathermodel> getwheatherInfo({required String CityName}) async {
    try {
      Response response = await Dio().get(
        'http://api.weatherapi.com/v1/forecast.json?key=ec9bb1cfae954b0091883004260708&q=$CityName',
      );
      Map<String, dynamic> json = response.data;
      Wheathermodel wheathermodel = Wheathermodel.fromJson(json);
      return wheathermodel;
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }
}
