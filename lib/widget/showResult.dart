import 'package:flutter/material.dart';
import 'package:bmi_application/main.dart';

Widget showResult(data, Color color) {
  if (!data.isEmpty) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hasil Perhitungan BMI Anda Adalah $data",
            style: TextStyle(
              color: lightColor,
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  } else {
    return Container();
  }
}
