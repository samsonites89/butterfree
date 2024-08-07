import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text; // this will only be set once upon initialization

  @override
  Widget build(BuildContext context) {
    return Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        );
  }
}

