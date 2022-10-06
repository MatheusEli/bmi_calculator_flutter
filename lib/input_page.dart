import 'package:bmi_calculator_flutter/reusable-card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon-content.dart';

const bottomContainerHeight = 80.0;
const reusableCardColor = 0xFF1D1E33;
const bottomContainerColor = 0xFFEB1555;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    color: const Color(reusableCardColor),
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ReusableCard(
                    color: const Color(reusableCardColor),
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ReusableCard(
                  color: const Color(reusableCardColor),
                  cardChild: Column(
                    children: const [Icon(FontAwesomeIcons.mars)],
                  ),
                )),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ReusableCard(
                    color: const Color(reusableCardColor),
                    cardChild: Column(
                      children: const [Icon(FontAwesomeIcons.mars)],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ReusableCard(
                      color: const Color(reusableCardColor),
                      cardChild: Column(
                        children: const [Icon(FontAwesomeIcons.mars)],
                      ),
                    )),
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
