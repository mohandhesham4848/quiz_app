import 'package:flutter/material.dart';
import 'package:quiz_app/gen/assets.gen.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/style/app_colors.dart';
import 'package:quiz_app/style/app_texts.dart';
import 'package:quiz_app/widgets/Question_widget.dart';
import 'package:quiz_app/widgets/back_button.dart';
import 'package:quiz_app/widgets/next_button.dart';

class QuestionManger extends StatefulWidget {
  @override
  State<QuestionManger> createState() => _QuestionMangerState();
}

class _QuestionMangerState extends State<QuestionManger> {
  List<QuestionModel> questions = [
    QuestionModel(
      image: Assets.a1.image(width: 25),
      number: 1,
      question: 'What is the capital of France?',
      options: ['Berlin', 'Madrid', 'Paris', 'Rome'],
      answer: 'Paris',
    ),
    QuestionModel(
      image: Assets.a2.image(width: 25),
      number: 2,
      question: 'Which planet is known as the Red Planet?',
      options: ['Earth', 'Mars', 'Jupiter', 'Venus'],
      answer: 'Mars',
    ),
    QuestionModel(
      image: Assets.a3.image(width: 25),

      number: 3,
      question: 'Who wrote "Romeo and Juliet"?',
      options: [
        'Mark Twain',
        'Charles Dickens',
        'William Shakespeare',
        'Jane Austen',
      ],
      answer: 'William Shakespeare',
    ),
    QuestionModel(
      image: Assets.a4.image(width: 25),

      number: 4,
      question: 'What is the largest ocean on Earth?',
      options: [
        'Atlantic Ocean',
        'Indian Ocean',
        'Arctic Ocean',
        'Pacific Ocean',
      ],
      answer: 'Pacific Ocean',
    ),
  ];

  int questionNum = 0;
  int? selectedOptionIndex;
  void onTap(int index) {
    setState(() {
      selectedOptionIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
              SizedBox(width: 5),
              questions[questionNum].image,
              SizedBox(width: 5),
              Text(
                'Question ${questionNum + 1}',
                style: AppTextStyles.h3(Colors.white),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(
          questions[questionNum].question,
          style: AppTextStyles.h1(Colors.white),
        ),
        SizedBox(height: 20),

        GestureDetector(
          onTap: () => onTap(0),
          child: QuestionWidget(
            icon:
                selectedOptionIndex == 0
                    ? Assets.checkB.image(width: 25)
                    : Assets.pushB.image(width: 25),
            answer: questions[questionNum].options[0],
            color:
                selectedOptionIndex == 0
                    ? AppColor.secondaryViolet
                    : Colors.white,
          ),
        ),
        GestureDetector(
          onTap: () => onTap(1),
          child: QuestionWidget(
            icon:
                selectedOptionIndex == 1
                    ? Assets.checkB.image(width: 25)
                    : Assets.pushB.image(width: 25),
            answer: questions[questionNum].options[1],
            color:
                selectedOptionIndex == 1
                    ? AppColor.secondaryViolet
                    : Colors.white,
          ),
        ),
        GestureDetector(
          onTap: () => onTap(2),
          child: QuestionWidget(
            icon:
                selectedOptionIndex == 2
                    ? Assets.checkB.image(width: 25)
                    : Assets.pushB.image(width: 25),
            answer: questions[questionNum].options[1],
            color:
                selectedOptionIndex == 2
                    ? AppColor.secondaryViolet
                    : Colors.white,
          ),
        ),
        GestureDetector(
          onTap: () => onTap(3),
          child: QuestionWidget(
            icon:
                selectedOptionIndex == 3
                    ? Assets.checkB.image(width: 25)
                    : Assets.pushB.image(width: 25),
            answer: questions[questionNum].options[2],
            color:
                selectedOptionIndex == 3
                    ? AppColor.secondaryViolet
                    : Colors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButtonWidget(
              onPressed: () {
                setState(() {
                  if (questionNum != 0) {
                    questionNum--;
                  } else {
                    Navigator.of(context).pop();
                  }
                });
              },
            ),
            SizedBox(width: 170),
            NextButtonWidget(
              onPressed: () {
                setState(() {
                  selectedOptionIndex = null;
                  if (questionNum != questions.length - 1) {
                    questionNum++;
                  }
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
