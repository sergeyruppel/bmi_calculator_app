import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card(color: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: Card(color: Color(0xFF1D1E33)),
                )
              ],
            ),
          ),
          Expanded(
            child: Card(color: Color(0xFF1D1E33)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card(color: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: Card(color: Color(0xFF1D1E33)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  final Color color;

  Card({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}

// color: Color(0xFF1D1E33)