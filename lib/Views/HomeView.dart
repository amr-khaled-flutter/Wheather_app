import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheather_app2/Views/SearchaCityView.dart';
import 'package:wheather_app2/cubit/wheathercubit/wheathercubit.dart';
import 'package:wheather_app2/cubit/wheathercubit/wheathercubitstate.dart';
import 'package:wheather_app2/widget/NowhatherInfo.dart';
import 'package:wheather_app2/widget/wheatherInfo.dart';

class Homeview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 11),
            child: IconButton(
              icon: Icon(Icons.search, size: 35, color: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, Searchacityview.id);
              },
            ),
          ),
        ],
        backgroundColor: Colors.blue,
        title: Text(
          'Wheather App',
          style: TextStyle(fontSize: 23, color: Colors.white),
        ),
      ),
      body: BlocBuilder<wheatherCubit, Wheathercubitstate>(
        builder: (context, state) {
          if (state is wheather_success) {
            return Wheatherinfo(
              wheathermodel: state.wheathermodel,
            );
          } else if (state is wheather_loading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is InitialState) {
            return Nowhatherinfo();
          } else if (state is wheather_failure) {
            return Center(child: Text('${state.errormessage}'));
          }
          return SizedBox();
        },
      ),
    );
  }
}
