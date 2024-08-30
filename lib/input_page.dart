import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator_app/icon_content.dart';
import 'package:bmi_calculator_app/reusable_card.dart';
import 'package:bmi_calculator_app/results_page.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  Gender? selectedGender;
  var height = 175;
  var weight = 90;
  var age = 30;
  var bmi = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: ReusableCard(
                color: inactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('$height', style: valueTextStyle),
                        const Text('cm', style: labelTextStyle),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 28.0),
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 14.0),
                        // trackHeight: 8.0,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: labelTextStyle.color,
                        thumbColor: accentColor,
                        overlayColor: const Color(0x35EB1555),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Slider(
                          label: 'SLIDER',
                          value: height.toDouble(),
                          min: 100.0,
                          max: 250.0,
                          onChanged: (var newValue) {
                            setState(() {
                              height = newValue.toInt();
                            });
                            print(newValue);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPressed: () {},
                      color: inactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: labelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: valueTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RoundIconButton(
                                icon: const Icon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    if (weight > 0) {
                                      weight -= 1;
                                    }
                                  });
                                },
                              ),
                              RoundIconButton(
                                icon: const Icon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    weight += 1;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPressed: () {},
                      color: inactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: labelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: valueTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RoundIconButton(
                                icon: const Icon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    if (age > 0) {
                                      age -= 1;
                                    }
                                  });
                                },
                              ),
                              RoundIconButton(
                                icon: const Icon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    age += 1;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    bmi = weight / (height * height);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ResultsPage(data: bmi.toString());
                        },
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    color: accentColor,
                    // width: double.infinity,
                    height: 80.0,
                    child: const Text(
                      'CALC (show page)',
                      style: buttonTextStyle,
                    ),
                  ),
                ),
              ),
              Container(
                width: 4.0,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    bmi = weight / (height * height);
                    final data = bmi.toString();
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return ResultsPage(data: data);
                      },
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    color: accentColor,
                    // width: double.infinity,
                    height: 80.0,
                    child: const Text(
                      'CALC (show modal)',
                      style: buttonTextStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final VoidCallback? onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      fillColor: activeCardColor,
      constraints: const BoxConstraints.tightFor(height: 56.0, width: 56.0),
      elevation: 0.0,
      child: icon,
    );
  }
}
