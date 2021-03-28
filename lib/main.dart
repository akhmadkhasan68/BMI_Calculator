import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bmi_application/screen/splash_screen.dart';

Color mainColor = Color(0xff0a0e21);
Color secondaryColor = Color(0xff171d2d);
Color primaryColor = Color(0xff5702e9);
Color lightColor = Color(0xfffefefe);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Application",
      theme: ThemeData(scaffoldBackgroundColor: mainColor),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
