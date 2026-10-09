import 'package:flutter/material.dart';

class Nowhatherinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'There is no wheather 😂 Start',
            style: TextStyle(
              fontSize: 28,
              color: Colors.black
            ),
          ),
          Text(
            'searching now 🔍',
            style: TextStyle(
              fontSize: 28,
              color: Colors.black
            ),
          ),
        ],
      ),
    );
  }
}
