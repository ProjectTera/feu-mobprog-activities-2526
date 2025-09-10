import 'package:flutter/material.dart';
import 'package:flutter_basics/commons/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 20,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/image/spiderman.png',
            width: 300,
            height: 300,
          ),
          StyledText('Peter Parker', 30, Colors.white),
          // OutlinedButton(
          //   onPressed: () {},
          //   child: StyledText('Start', 20, Colors.white),
          // ),
          OutlinedButton.icon(
            onPressed: switchScreen,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: StyledText('Start', 20, Colors.white),
          ),
        ],
      ),
    );
  }
}
