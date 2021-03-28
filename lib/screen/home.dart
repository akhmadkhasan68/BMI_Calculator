import 'package:flutter/material.dart';
import 'package:bmi_application/main.dart';
import 'package:bmi_application/widget/input.dart';
import 'package:bmi_application/widget/showResult.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;
  double hasil = 0.5;
  String data = '';
  Color color;
  double tb, tbs;
  double bb;
  final TinggiBadan = TextEditingController();
  final BeratBadan = TextEditingController();

  void Hitung() {
    setState(() {
      tb = double.parse(TinggiBadan.value.text);
      bb = double.parse(BeratBadan.value.text);
      tbs = tb / 100;
      hasil = bb / (tbs * tbs);
      if (hasil <= 16) {
        data = 'Kurus Parah';
        color = Color(0xffe74c3c);
      } else if (hasil > 16 && hasil <= 17) {
        data = 'Kurus Sedang';
        color = Color(0xffe67e22);
      } else if (hasil > 17 && hasil <= 18.5) {
        data = 'Kurus Ringan';
        color = Color(0xfff1c40f);
      } else if (hasil > 18.5 && hasil <= 25) {
        data = 'Normal';
        color = Color(0xff2ecc71);
      } else if (hasil > 25 && hasil <= 30) {
        data = 'Kegemukan';
        color = Color(0xfff1c40f);
      } else if (hasil > 30 && hasil <= 35) {
        data = 'Obesitas Kelas 1';
        color = Color(0xffe67e22);
      } else if (hasil > 35 && hasil <= 40) {
        data = 'Obesitas Kelas 2';
        color = Color(0xffe74c3c);
      } else if (hasil > 40) {
        data = 'Obesitas Kelas 3';
        color = Color(0xffe74c3c);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: lightColor,
          ),
        ),
        backgroundColor: secondaryColor,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              inputSection(TinggiBadan, "Tinggi Badan", "Masukkan Tinggi Badan",
                  TextInputType.number),
              SizedBox(
                height: 20.0,
              ),
              inputSection(BeratBadan, "Berat Badan", "Masukkan Berat Badan",
                  TextInputType.number),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                onPressed: Hitung,
                color: primaryColor,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Hitung',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              showResult(data, color),
            ],
          ),
        ),
      ),
    );
  }
}
