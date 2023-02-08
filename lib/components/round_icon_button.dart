import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon),
        constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
        disabledElevation: 6.0,
        elevation: 6.0,
        shape: const CircleBorder(),
        fillColor: const Color(0xFF4C4F5E),
        onPressed: () {
          onPressed();
        });
  }
}
