import 'package:flutter/material.dart';
import 'package:adv_basics/commons/styled_text.dart';

double? gap = 10;

class StartScreen extends StatelessWidget {
  const StartScreen(this.openProfile, {super.key});

  final void Function() openProfile;

  void buttonListener() {
    openProfile();
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 400,
            height: 400,
          ),
          SizedBox(
            height: gap,
          ),
          StyledText('Mascy Sylvan Requilman', 28, Colors.white),
          SizedBox(
            height: gap,
          ),
          OutlinedButton.icon(
            onPressed: buttonListener,
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: const StyledText('Start', 15, Colors.white),
          ),
        ],
      ),
    );
  }
}
