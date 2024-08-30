import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        // platform: TargetPlatform.iOS,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Color(0xFF0a0d22),
          foregroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: 0.0,
        ),
      ),
      home: const InputPage(),
    );
  }
}
