import 'package:adv_basics/data/info.dart';
import 'package:adv_basics/profile/profile_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/profile/profile_summary.dart';
import 'package:flutter/material.dart';

class ProfileMain extends StatefulWidget {
  const ProfileMain({super.key});

  @override
  State<ProfileMain> createState() {
    return _ProfileMainState();
  }
}

class _ProfileMainState extends State<ProfileMain> {
  final List<String> selectedInfo = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      selectedInfo.clear();
      activeScreen = 'profile-screen';
    });
  }

  void goToHome() {
    setState(() {
      selectedInfo.clear();
      activeScreen = 'start-screen';
    });
  }

  void addSelectedInfo(String info) {
    selectedInfo.add(info);

    if (selectedInfo.length >= profileInformation.length) {
      setState(() {
        activeScreen = 'summary-screen';
      });
    }
  }

  @override
  Widget build(context) {
    //Widget currentScreen = activeScreen == 'profile-screen' ? ProfileScreen() : StartScreen(switchScreen);
    Widget currentScreen = StartScreen(switchScreen);

    if (activeScreen == 'profile-screen') {
      currentScreen = ProfileScreen(
        onInfoSelection: addSelectedInfo,
      );
    } else if (activeScreen == 'summary-screen') {
      currentScreen = ProfileSummary(
        selectedInfo: selectedInfo,
        retakeProfile: switchScreen,
        goToHome: goToHome,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurpleAccent,
                const Color.fromARGB(255, 160, 77, 255),
              ],
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}
