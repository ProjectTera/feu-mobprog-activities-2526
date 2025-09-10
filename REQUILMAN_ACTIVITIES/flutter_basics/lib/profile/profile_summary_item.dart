import 'package:flutter/material.dart';
import 'package:flutter_basics/commons/styled_text.dart';

class ProfileSummaryItem extends StatelessWidget {
  const ProfileSummaryItem(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                StyledText((data['info_index']).toString(), 30, Colors.white),
                Expanded(
                  child: Column(
                    spacing: 5,
                    children: [
                      StyledText(
                        (data['info_description']).toString(),
                        20,
                        Colors.deepOrange,
                      ),
                      StyledText(
                        (data['selected_info_item']).toString(),
                        15,
                        Colors.pink,
                      ),
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
