import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

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
