import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  String activeDiceImage = 'assets/img/dice-1.png';

  void onPressed() {
    setState(() {
      int diceNumber = Random().nextInt(6) + 1; 
      activeDiceImage = 'assets/img/dice-$diceNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText('Roll the Dice!'),
        Image.asset(
          activeDiceImage,
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
