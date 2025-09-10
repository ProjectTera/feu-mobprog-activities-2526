import 'package:flutter/material.dart';
import 'package:flutter_basics/data/profile_data.dart';
import 'package:flutter_basics/profile/profile_screen.dart';
import 'package:flutter_basics/profile/profile_summary.dart';
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

  void addSelectedInfoItem(String infoItem) {
    selectedInfo.add(infoItem);

    if (selectedInfo.length >= profileData.length) {
      setState(() {
        activeScreen = 'summary-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = StartScreen(switchScreen);

    if (activeScreen == 'profile-screen') {
      currentScreen = ProfileScreen(
        onInfoItemSelection: addSelectedInfoItem,
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
