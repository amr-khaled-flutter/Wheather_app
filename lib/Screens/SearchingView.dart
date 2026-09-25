import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheatherapp/class/wheatherclass.dart';
import 'package:wheatherapp/cubit/cubitweather/getwheathercubit.dart';

class Searchingview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.blue,
        title: Text(
          "Searching View",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (value) {
              var getwheathercubit = BlocProvider.of<Getwheathercubit>(context);
              getwheathercubit.fetch_weather(City_Name: value);

              Navigator.pop(context);
            },
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search, size: 35, color: Colors.black),
              contentPadding: EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 16,
              ),
              hintText: "Enter The City",
              labelText: "Search",
              labelStyle: TextStyle(fontSize: 20, color: Colors.black),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.red),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
