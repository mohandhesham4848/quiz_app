import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';

import 'package:quiz_app/widgets/question_page.dart';

class QuestionManger extends StatefulWidget {
  @override
  State<QuestionManger> createState() => _QuestionMangerState();
}

class _QuestionMangerState extends State<QuestionManger> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void goToNextPage() {
    if (currentPage < 3) {
      currentPage++;
      _pageController.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void goToPreviousPage() {
    if (currentPage > 0) {
      currentPage--;
      _pageController.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      onPageChanged: (index) {
        setState(() {
          currentPage = index;
        });
      },
      children: [
        QuestionCard(
          questionModel: questions[0],
          onBackPressed: goToPreviousPage,
          onNextPressed: goToNextPage,
        ),
        QuestionCard(
          questionModel: questions[1],
          onBackPressed: goToPreviousPage,
          onNextPressed: goToNextPage,
        ),
        QuestionCard(
          questionModel: questions[2],
          onBackPressed: goToPreviousPage,
          onNextPressed: goToNextPage,
        ),
        QuestionCard(
          questionModel: questions[3],
          onBackPressed: goToPreviousPage,
          onNextPressed: goToNextPage,
        ),
      ],
    );
  }
}
