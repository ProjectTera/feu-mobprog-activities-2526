import 'package:flutter/material.dart';
import 'package:flutter_app/styled_text.dart';

class GradientContainer extends StatelessWidget {

  const GradientContainer(this.color1, this.color2, {super.key});

  final dynamic? color1;
  final dynamic? color2; 
  
  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: StyledText('Mascy Sylvan'),
          ),
        );
  }
}