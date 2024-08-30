import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/constants.dart';

class ResultsPage extends StatelessWidget {
  final String data;

  const ResultsPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            data,
            style: valueTextStyle,
          ),
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text('RECALCULATE')),
        ],
      ),
    );
  }
}
