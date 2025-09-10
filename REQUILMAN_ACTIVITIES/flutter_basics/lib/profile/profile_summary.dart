import 'package:flutter/material.dart';
import 'package:flutter_basics/commons/styled_button.dart';
import 'package:flutter_basics/commons/styled_text.dart';
import 'package:flutter_basics/data/profile_data.dart';
import 'package:flutter_basics/profile/profile_summary_item.dart';

class ProfileSummary extends StatelessWidget {
  const ProfileSummary({
    super.key,
    required this.selectedInfo,
    required this.retakeProfile,
    required this.goToHome,
  });

  final List<String> selectedInfo;
  final void Function() retakeProfile;
  final void Function() goToHome;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < 20; i++) {
      summary.add({
        'info_index': i + 1,
        'info_description': profileData[i % profileData.length].infoDescription,
        'selected_info_item': selectedInfo[i % profileData.length],
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
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StyledText('Peter Parker aka Spider-Man', 30, Colors.white),
            ProfileSummaryItem(getSummaryData()),
            StyledButton(text: 'Retake Profile', buttonListener: retakeProfile),
            StyledButton(text: 'Home', buttonListener: goToHome),
          ],
        ),
      ),
    );
  }
}
