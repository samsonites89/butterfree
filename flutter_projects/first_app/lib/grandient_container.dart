import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

final beginAlignment = getAlignment(); // no reassigning.
const endAlignment = Alignment.bottomRight;

class GradientBackground extends StatelessWidget {
  const GradientBackground(
      {super.key, required this.startColor, required this.finishColor});

  // predefined constructors
  const GradientBackground.purple(
      {super.key,
      this.startColor = Colors.deepPurple,
      this.finishColor = Colors.purple});

  final Color startColor;
  final Color finishColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, finishColor], // look a list
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        // child:
        child: DiceRoller(),
      ),
    );
  }
}

Alignment getAlignment() {
  return Alignment.topLeft;
}
