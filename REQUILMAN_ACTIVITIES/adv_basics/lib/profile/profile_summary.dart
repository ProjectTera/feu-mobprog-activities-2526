import 'package:adv_basics/commons/styled_button.dart';
import 'package:adv_basics/commons/styled_text.dart';
import 'package:adv_basics/data/info.dart';
import 'package:adv_basics/profile/profile_summary_item.dart';
import 'package:flutter/material.dart';

class ProfileSummary extends StatelessWidget {
  const ProfileSummary({super.key, required this.selectedInfo, required this.retakeProfile, required this.goToHome});

  final List<String> selectedInfo;
  final void Function() retakeProfile;
  final void Function() goToHome;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedInfo.length; i++) {
      summary.add({
        'information_index': i,
        'information': profileInformation[i].text,
        'selected_item': selectedInfo[i],
      });
      summary.add({
        'information_index': i,
        'information': profileInformation[i].text,
        'selected_item': selectedInfo[i],
      });
      summary.add({
        'information_index': i,
        'information': profileInformation[i].text,
        'selected_item': selectedInfo[i],
      });
      summary.add({
        'information_index': i,
        'information': profileInformation[i].text,
        'selected_item': selectedInfo[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(50),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StyledText('Mascy Sylvan Requilman Profile', 30, Colors.white),
            SizedBox(height: 20,),
            ProfileSummaryItem(getSummaryData()),
            SizedBox(height: 20,),
            StyledButton(text: 'Retake Profile', onTap: retakeProfile),
            StyledButton(text: 'Go to Home', onTap: goToHome),
          ],
        ),
      ),
    );
  }
}
