import 'package:flutter/material.dart';
import 'package:first_app/grandient_container.dart';

void main() {
  add(1);
  addNamed(a: 2);
  // const can optimize runtime performance.
  // stored in device memory.
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientBackground(),
      ),
    ),
  ); // this is by flutter, so it needs to be imported (format document)
}

// positional params
// these are required, and cannot be omitted
// you can use [] to make the param optional.
void add(a, [b = 1]) {
  // b is optional with default value
  print(a + b);
}

// named params
void addNamed({required a, b = 1}) {
  // required makes param required.
  print(a + b);
}