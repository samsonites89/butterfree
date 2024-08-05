import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

final beginAlignment = getAlignment(); // no reassigning.
const endAlignment = Alignment.bottomRight;


class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [Colors.deepPurple, Colors.purple], // look a list
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}

Alignment getAlignment() {
  return Alignment.topLeft;
}