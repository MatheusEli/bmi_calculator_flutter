import 'package:bmi_calculator_flutter/reusable-card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon-content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const reusableCardColor = 0xFF1D1E33;
const bottomContainerColor = 0xFFEB1555;

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType genderSelected = GenderType.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ReusableCard(
                    color: genderSelected == GenderType.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                    onPress: () {
                      setState(() {
                        genderSelected = GenderType.male;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ReusableCard(
                    color: genderSelected == GenderType.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                    onPress: () {
                      setState(() {
                        genderSelected = GenderType.female;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 20.0,
                decoration: BoxDecoration(
                  color: inactiveCardColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ReusableCard(
                    color: inactiveCardColor,
                    cardChild: Column(
                      children: const [Icon(FontAwesomeIcons.mars)],
                    ),
                    onPress: () {
                      setState(() {
                        genderSelected = GenderType.female;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ReusableCard(
                    color: inactiveCardColor,
                    cardChild: Column(
                      children: const [Icon(FontAwesomeIcons.mars)],
                    ),
                    onPress: () {
                      setState(() {
                        genderSelected = GenderType.female;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: const Color(bottomContainerColor),
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
