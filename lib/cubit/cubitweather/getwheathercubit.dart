import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:wheatherapp/class/wheatherclass.dart';
import 'package:wheatherapp/cubit/cubitweather/wheatherStates.dart';
import 'package:wheatherapp/services/Get_Service_wheather.dart';

class Getwheathercubit extends Cubit<statuss> {
  Wheatherclass? whatherfetch;
  Getwheathercubit() : super(No_wheather_state());
  void fetch_weather({required String City_Name}) async {
    try {
       whatherfetch = await GetServiceWheather(
        Dio(),
      ).getwheather(City_name: City_Name);
      emit(Info_weather_state());
    } catch (e) {
      emit(fail_Date_weather_state());
    }
  }
}
