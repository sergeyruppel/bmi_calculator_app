import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconContent({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0),
        const SizedBox(height: 16.0),
        Text(text, style: labelTextStyle),
      ],
    );
  }
}
