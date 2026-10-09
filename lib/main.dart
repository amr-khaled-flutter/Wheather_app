import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheather_app2/Services/GetwheatherService.dart';
import 'package:wheather_app2/Views/HomeView.dart';
import 'package:wheather_app2/Views/SearchaCityView.dart';
import 'package:wheather_app2/cubit/wheathercubit/wheathercubit.dart';

void main() {
  runApp(Wheather_app());
}

class Wheather_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => wheatherCubit(Getwheatherservice()),
      child: MaterialApp(
        routes: {
          Searchacityview.id : (context) => Searchacityview(),
        },
        debugShowCheckedModeBanner: false,
        home: Homeview(),
      ),
    );
  }
}
