import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(this.icon, this.onPressed);

  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onPressed();
      },
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(height: 56.0, width: 56.0),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
