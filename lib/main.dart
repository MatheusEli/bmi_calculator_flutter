import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const InputPage(),
        theme: ThemeData.dark().copyWith(
          // primarySwatch: Colors.red,
          colorScheme: const ColorScheme.light(
            primary: Color(0xFF0A0E21),
          ),
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
        ));
  }
}
