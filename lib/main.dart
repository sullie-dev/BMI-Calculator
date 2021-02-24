import 'package:flutter/material.dart';
import 'calculator_brain.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0E0F20),
        scaffoldBackgroundColor: Color(0xff0E0F20),
      ),
      routes: {
        '/': (context) => InputPage(),
      },
      initialRoute: '/',
    );
  }
}
