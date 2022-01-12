import 'dart:math';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'constants/constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
            primaryColor: Colors.pink,
            scaffoldBackgroundColor: Color(0xFF0A0E21),
            accentColor: Colors.purple,
            textTheme: TextTheme(
                bodyText1 : TextStyle(
                  color: Colors.white,
                ),

            )
        ),

      home: InputPage(),
    );
  }
}

