import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final Random randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDiceRoll = randomizer.nextInt(6) + 1;    


  void onPressed() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText('Roll the Dice!'),
        Image.asset(
          'assets/img/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 10),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll'))
      ],
    );
  }
}
