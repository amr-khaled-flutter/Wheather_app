import 'package:flutter/material.dart';

class Nowheatherinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "There is no weather start",
            style: TextStyle(fontSize: 32, color: Colors.black),
          ),
          Text(
            "searching now 🔍",
            style: TextStyle(fontSize: 32, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
