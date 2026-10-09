import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheather_app2/Services/GetwheatherService.dart';
import 'package:wheather_app2/cubit/wheathercubit/wheathercubitstate.dart';
import 'package:wheather_app2/model/Wheathermodel.dart';

class wheatherCubit extends Cubit<Wheathercubitstate> {
  wheatherCubit(this.wheatherservices) : super(InitialState());
  Getwheatherservice wheatherservices;
  Wheathermodel? wheathermodel;

  void getwheather({required String cityname}) async {
    emit(wheather_loading());
    try {
    wheathermodel =  await wheatherservices.getwheatherInfo(CityName: cityname);
      emit(wheather_success(
        wheathermodel: wheathermodel!,
      ));
    } catch (e) {
      emit(wheather_failure(e.toString()));
    }
  }
}
