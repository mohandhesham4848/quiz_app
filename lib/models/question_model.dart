import 'package:flutter/material.dart';

class QuestionModel {
  final int number;
  final String question;
  final List<String> options;
  final String answer;
  final Image image;

  QuestionModel({
    required this.number,
     required this.question,
    required this.options,
    required this.answer,
    required this.image,
  });
}
