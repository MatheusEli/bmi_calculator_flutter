import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton(this.buttonTitle, this.onTap);

  final String buttonTitle;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        color: const Color(kBottomContainerColor),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(buttonTitle, style: kLargeButtonStyle),
        ),
      ),
    );
  }
}
