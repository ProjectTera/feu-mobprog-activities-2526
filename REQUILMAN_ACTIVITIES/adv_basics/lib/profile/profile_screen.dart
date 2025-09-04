import 'package:adv_basics/commons/styled_button.dart';
import 'package:adv_basics/commons/styled_text.dart';
import 'package:adv_basics/data/info.dart';
import 'package:adv_basics/models/profile_info.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.onInfoSelection});

  final void Function(String info) onInfoSelection;

  @override
  State<ProfileScreen> createState() {
    return _ProfileScreenState();
  }
}

class _ProfileScreenState extends State<ProfileScreen> {
  var currentInfoIndex = 0;

  void infoClick(String info) {
    widget.onInfoSelection(info);

    setState(() {
      currentInfoIndex++;
    });
  }

  @override
  Widget build(context) {
    ProfileInfo currentInfo = profileInformation[currentInfoIndex];

    return Center(
      child: Container(
        margin: EdgeInsets.all(50),
        child: Column(
          spacing: 10,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledText(currentInfo.text, 30, Colors.white),
            SizedBox(
              height: 20,
            ),
            ...currentInfo.getShuffledList().map((item) {
              return StyledButton(text: item, onTap: () {
                infoClick(item);
              });
            }),
          ],
        ),
      ),
    );
  }
}
