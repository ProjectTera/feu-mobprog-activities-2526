import 'package:flutter/material.dart';
import 'package:flutter_basics/commons/styled_text.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({super.key, required this.text, required this.buttonListener});

  final String text;
  final void Function() buttonListener;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            onPressed: buttonListener,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
            ),
            child: StyledText(text, 30, Colors.deepPurple),
          );
  }
}