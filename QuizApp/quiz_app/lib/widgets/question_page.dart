import 'package:flutter/material.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/style/app_colors.dart';
import 'package:quiz_app/style/app_texts.dart';
import 'package:quiz_app/widgets/answer_widget.dart';
import 'package:quiz_app/widgets/back_button.dart';
import 'package:quiz_app/widgets/next_button.dart';

class QuestionCard extends StatefulWidget {
  final QuestionModel questionModel;
  final VoidCallback onBackPressed;
  final VoidCallback onNextPressed;

  const QuestionCard({
    Key? key,
    required this.onBackPressed,
    required this.onNextPressed,
    required this.questionModel,
  }) : super(key: key);

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  int? selectedIndex;

  void onAnswerTap(int index) {
    setState(() {
      selectedIndex = selectedIndex == index ? null : index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questionModel = widget.questionModel;
    final onBackPressed = widget.onBackPressed;
    final onNextPressed = widget.onNextPressed;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 120,
          height: 40,
          decoration: BoxDecoration(
            color: AppColor.secondaryViolet,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Row(
            children: [
              const SizedBox(width: 5),
              questionModel.image,
              const SizedBox(width: 5),
              Text(
                'Question ${questionModel.number}',
                style: AppTextStyles.h3(Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(questionModel.question, style: AppTextStyles.h1(Colors.white)),
        const SizedBox(height: 20),
        Column(
          children: List.generate(questionModel.options.length, (index) {
            return GestureDetector(
              onTap: () => onAnswerTap(index),
              child: AnswerWidget(
                options: questionModel.options[index],
                color:
                    selectedIndex == index
                        ? AppColor.secondaryViolet
                        : Colors.white,
                icon:
                    selectedIndex == index
                        ? Assets.pushA.image()
                        : Assets.pushB.image(),
              ),
            );
          }),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButtonWidget(onPressed: onBackPressed),
            const SizedBox(width: 170),
            NextButtonWidget(onPressed: onNextPressed),
          ],
        ),
        const SizedBox(height: 45),
      ],
    );
  }
}
