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
                    cardChild: Column(
                      children: [
                        Icon(FontAwesomeIcons.mars),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    color: cardColor,
                    cardChild: Column(),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Card(
              color: cardColor,
              cardChild: Column(
                children: [
                  Icon(FontAwesomeIcons.mars, size: 80.0),
                ],
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
                      children: [
                        Icon(FontAwesomeIcons.mars),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    color: cardColor,
                    cardChild: Column(
                      children: [
                        Icon(FontAwesomeIcons.mars),
                      ],
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