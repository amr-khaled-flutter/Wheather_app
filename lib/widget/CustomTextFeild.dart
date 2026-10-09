import 'package:flutter/material.dart';

class Customtextfeild extends StatelessWidget {
  Function(String)? onsubmited;
  Customtextfeild({ this.onsubmited});
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onsubmited,
      decoration: InputDecoration(
        hintText: 'Enter City Name',
        hintStyle: TextStyle(fontSize: 17, color: Colors.black),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xffDDC194)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 2, color: Color(0xffDDC194)),
        ),
      ),
    );
  }
}
