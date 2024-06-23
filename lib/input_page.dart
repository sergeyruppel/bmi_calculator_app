import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color cardColor = Color(0xFF1D1E33);

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
                  child: Card(
                    color: cardColor,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                      color: Color(0xFF8D8E98),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    color: cardColor,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                      color: Color(0xFF8D8E98),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Card(
              color: cardColor,
              cardChild: Column(
                children: [],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    color: cardColor,
                    cardChild: Column(
                      children: [],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    color: cardColor,
                    cardChild: Column(
                      children: [],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 20.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const IconContent({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0),
        const SizedBox(height: 16.0),
        Text(text, style: TextStyle(fontSize: 18.0, color: color)),
      ],
    );
  }
}

class Card extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  Card({required this.color, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: cardChild,
    );
  }
}

// color: Color(0xFF1D1E33)
