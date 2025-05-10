import 'package:flutter/material.dart';
import 'package:quiz_app/style/app_colors.dart';
import 'package:quiz_app/style/app_texts.dart';
import 'package:quiz_app/widgets/Question_widget.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141829),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/GRADINET (2).png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 90),
              Container(
                width: 120,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColor.secondaryViolet,
                ),
                child: Row(
                  children: [
                    Icon(Icons.add_ic_call_outlined),
                    Text('Question 1', style: AppTextStyles.h3(Colors.white)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // quistions
              Text(
                'How would you describe your level of satisfaction with the healthcare system?',
                style: AppTextStyles.h1(Colors.white),
              ),
              SizedBox(height: 20),

              Question_widget(),
              Question_widget(),

              Question_widget(),

              Question_widget(),
              Spacer(),
              Row(children: [],)
            ],
          ),
        ),
      ),
    );
  }
}
