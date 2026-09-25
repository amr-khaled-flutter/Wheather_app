import 'package:dio/dio.dart';
import 'package:wheatherapp/class/wheatherclass.dart';

class GetServiceWheather {
  final Dio dio;
  GetServiceWheather(this.dio);

  Future<Wheatherclass> getwheather({required String City_name}) async {
    try {
      Response response = await dio.get(
        "https://api.weatherapi.com/v1/forecast.json?key=ec9bb1cfae954b0091883004260708&q=$City_name&days=1",
      );
      Map<String, dynamic> json = response.data;
      Wheatherclass wha = Wheatherclass.from_on(json);
      return wha;
    } on DioException catch (e) {
      String msg = e.response?.data ?? "Ops app isnot work";
      throw Exception(msg);
    } catch (e) {
      throw Exception("Ops app isnot work");
    }
  }
}
