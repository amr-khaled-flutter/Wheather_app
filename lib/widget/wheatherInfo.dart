import 'package:flutter/material.dart';
import 'package:wheather_app2/model/Wheathermodel.dart';

class Wheatherinfo extends StatelessWidget {
  Wheathermodel wheathermodel;
  Wheatherinfo({required this.wheathermodel});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          wheathermodel.CityName,
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '${wheathermodel.updateDate.hour}:${wheathermodel.updateDate.minute.toString().padLeft(2, '0')}',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Image(
              width: 100,
              height: 100,
              image: NetworkImage(wheathermodel.icon),
            ),
            Text(
               '${wheathermodel.temp}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            Column(
              children: [
                Text(
                  'MaxTemp: ${wheathermodel.max_temp}',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                Text(
                  'MinTemp: ${wheathermodel.min_temp}',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
          ],
        ),

        Text(
          '${wheathermodel.text}',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
