import 'package:adv_basics/commons/styled_text.dart';
import 'package:flutter/material.dart';

class ProfileSummaryItem extends StatelessWidget {
  const ProfileSummaryItem(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              spacing: 10,
              children: [
                StyledText(
                  ((data['information_index'] as int) + 1).toString(),
                  20,
                  Colors.white,
                ),
                Expanded(
                  child: Column(
                    spacing: 10,
                    children: [
                      StyledText(data['information'] as String, 20, Colors.white),
                      StyledText(data['selected_item'] as String, 15, Colors.white),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
