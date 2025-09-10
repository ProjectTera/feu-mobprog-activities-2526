import 'package:flutter/material.dart';
import 'package:flutter_basics/commons/styled_button.dart';
import 'package:flutter_basics/commons/styled_text.dart';
import 'package:flutter_basics/data/profile_data.dart';
import 'package:flutter_basics/models/profile_info.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.onInfoItemSelection});

  final void Function(String infoItem) onInfoItemSelection;

  @override
  State<ProfileScreen> createState() {
    return _ProfileScreenState();
  }
}

class _ProfileScreenState extends State<ProfileScreen> {
  var currentInfoIndex = 0;

  void itemClick(String selectedInfoItem) {
    widget.onInfoItemSelection(selectedInfoItem);

    setState(() {
      currentInfoIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    ProfileInfo currentInfo = profileData[currentInfoIndex];

    return Center(
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          spacing: 15,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledText(currentInfo.infoDescription, 30, Colors.white),
            SizedBox(
              height: 30,
            ),
            // StyledButton(text: currentInfo.infoItems[0], buttonListener: () {}),
            // StyledButton(text: currentInfo.infoItems[1], buttonListener: () {}),
            // StyledButton(text: currentInfo.infoItems[2], buttonListener: () {}),
            ...currentInfo.getShuffledList().map((item) {
              return StyledButton(text: item, buttonListener: () {
                itemClick(item);
              });
            }),
          ],
        ),
      ),
    );
  }
}
