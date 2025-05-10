import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_app/models/quistion_model.dart';

part 'question_cuit_state.dart';

class QuestionCuitCubit extends Cubit<QuestionCuitState> {
  QuestionCuitCubit() : super(QuestionCuitInitial());
  final List<QuistionModel> questions = [
    QuistionModel(
      number: 1,
      quistion: 'What is the capital of France?',
      options: ['Berlin', 'Madrid', 'Paris', 'Rome'],
      answer: 'Paris',
    ),
    QuistionModel(
      number: 2,
      quistion: 'Which planet is known as the Red Planet?',
      options: ['Earth', 'Mars', 'Jupiter', 'Venus'],
      answer: 'Mars',
    ),
    QuistionModel(
      number: 3,
      quistion: 'Who wrote "Romeo and Juliet"?',
      options: [
        'Mark Twain',
        'Charles Dickens',
        'William Shakespeare',
        'Jane Austen',
      ],
      answer: 'William Shakespeare',
    ),
    QuistionModel(
      number: 4,
      quistion: 'What is the largest ocean on Earth?',
      options: [
        'Atlantic Ocean',
        'Indian Ocean',
        'Arctic Ocean',
        'Pacific Ocean',
      ],
      answer: 'Pacific Ocean',
    ),
  ];
  
}
