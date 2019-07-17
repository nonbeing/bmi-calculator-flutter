import 'package:flutter/material.dart';
import 'input_page.dart';

const mainBackgroundColor = Color(0xff0a0e21);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff0a0e21),
        accentColor: Colors.purple,
        scaffoldBackgroundColor: mainBackgroundColor,
        textTheme: TextTheme(body1: TextStyle(color: Colors.white)),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
