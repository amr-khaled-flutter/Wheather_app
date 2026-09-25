import 'package:flutter/material.dart';
import 'package:wheatherapp/Function/Materiallcolor.dart';
import 'package:wheatherapp/Screens/HomePage.dart';
import 'package:wheatherapp/cubit/cubitweather/getwheathercubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheatherapp/cubit/cubitweather/wheatherStates.dart';

void main() {
  runApp(wheatherApp());
}

class wheatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Getwheathercubit(),
      child: Builder(
        builder: (context) {
          return BlocBuilder<Getwheathercubit, statuss>(
            builder: (context, state) {
              return MaterialApp(
                theme: ThemeData(
                  primarySwatch: getThemeColor(
                    BlocProvider.of<Getwheathercubit>(
                      context,
                    ).whatherfetch?.condition,
                  ),
                ),
                debugShowCheckedModeBanner: false,
                home: Homepage(),
              );
            },
          );
        },
      ),
    );
  }
}
