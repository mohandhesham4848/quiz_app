import 'package:flutter/material.dart';
import 'package:quiz_app/style/app_texts.dart';

class QuestionWidget extends StatelessWidget {
  final String answer;
  final Color color;
  final Image icon;

  const QuestionWidget({
    super.key,
    required this.answer,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        width: 400,
        height: 68,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            SizedBox(width: 15),

            icon,

            SizedBox(width: 15),

            Text(answer, style: AppTextStyles.h3(Colors.black)),
          ],
        ),
      ),
    );
  }
}
