import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheatherapp/class/wheatherclass.dart';
import 'package:wheatherapp/cubit/cubitweather/getwheathercubit.dart';

class InfoWheather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Wheatherclass wheathermodel = BlocProvider.of<Getwheathercubit>(context).whatherfetch!;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            wheathermodel.City_name,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "updated at ${wheathermodel.date.hour} :${wheathermodel.date.minute}",
            style: TextStyle(
              fontSize: 23,
              color: Colors.black,
              //fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(image: NetworkImage(wheathermodel.image ?? " ")),
                Text(
                  " ${wheathermodel.temp}",
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "maxtemp ${wheathermodel.maxtemp.toInt()}",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                    Text(
                      "mintemp ${wheathermodel.mintemp.toInt()}",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Text(
            "${wheathermodel.condition}",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

// DateTime stringtodatetime(String value) {
//   return DateTime.parse(value);
// }
