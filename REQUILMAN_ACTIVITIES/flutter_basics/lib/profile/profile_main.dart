import 'package:flutter/material.dart';
import 'package:flutter_basics/profile/profile_screen.dart';
import 'package:flutter_basics/start_screen.dart';

class ProfileMain extends StatefulWidget {
  const ProfileMain({super.key});

  @override
  State<ProfileMain> createState() {
    return _ProfileMainState();
  }

}

class _ProfileMainState extends State<ProfileMain> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const ProfileScreen();
  //   });
  // }

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'profile-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = StartScreen(switchScreen);

    if (activeScreen == 'profile-screen') {
      currentScreen = ProfileScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                const Color.fromARGB(255, 135, 76, 236),
              ],
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}