import 'package:flutter/material.dart';
import 'package:quiz_app/style/app_texts.dart';

class Question_widget extends StatelessWidget {
  const Question_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Container(
          width: 400,
          height: 68,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              SizedBox(width: 15),

              Image.asset('assets/PUSH B.png', width: 25),

              SizedBox(width: 15),

              Text('asdasdasdasdas', style: AppTextStyles.h3(Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
