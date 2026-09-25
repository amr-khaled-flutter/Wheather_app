import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheatherapp/Screens/SearchingView.dart';
import 'package:wheatherapp/cubit/cubitweather/getwheathercubit.dart';
import 'package:wheatherapp/cubit/cubitweather/wheatherStates.dart';
import 'package:wheatherapp/widget/Info_Wheather.dart';
import 'package:wheatherapp/widget/NoWheatherInfo.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Searchingview();
                  },
                ),
              );
            },
            icon: Icon(Icons.search, color: Colors.white, size: 35),
          ),
        ],
        backgroundColor: Colors.blue,
        title: Text(
          "Wheather App",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: BlocBuilder<Getwheathercubit, statuss>(
        builder: (context, state) {
          if (state is No_wheather_state) {
            return Nowheatherinfo();
          } else if (state is Info_weather_state) {
            return InfoWheather(
            );
          } else {
            return Text("Opps there was an error");
          }
        },
      ),
    );
  }
}
