import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheather_app2/cubit/wheathercubit/wheathercubit.dart';
import 'package:wheather_app2/widget/CustomTextFeild.dart';

class Searchacityview extends StatelessWidget {
  static String id = 'Search';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFEAA40),
        title: Text(
          'Search a City',
          style: TextStyle(fontSize: 23, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 60),
        child: Customtextfeild(
          onsubmited:(data) {
            BlocProvider.of<wheatherCubit>(context).getwheather(cityname: data);
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
