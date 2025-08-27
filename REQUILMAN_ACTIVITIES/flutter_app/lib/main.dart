import 'package:flutter/material.dart';
import 'package:flutter_app/gradient_container.dart';

void main() {
  // runApp(const MaterialApp(home: Text('Hello World!'),));
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors.amber, Colors.blue),
      ),
    ),
  );
}
