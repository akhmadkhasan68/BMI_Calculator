import 'package:flutter/material.dart';
import 'package:bmi_application/main.dart';

Widget inputSection(name, String title, String placeholder, inputType) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(color: lightColor),
      ),
      SizedBox(
        height: 10.0,
      ),
      TextFormField(
        controller: name,
        style: TextStyle(
          color: Colors.white,
        ),
        keyboardType: inputType,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 25.0),
          hintText: placeholder,
          hintStyle: TextStyle(color: Color(0xaafefefe)),
          filled: true,
          fillColor: secondaryColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    ],
  );
}
