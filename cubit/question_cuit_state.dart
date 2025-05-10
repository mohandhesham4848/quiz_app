part of 'question_cuit_cubit.dart';

@immutable
sealed class QuestionCuitState {}

final class QuestionCuitInitial extends QuestionCuitState {}

final class NextQuestionState extends QuestionCuitState {}

final class PreviosQuestionState extends QuestionCuitState {}

final class ChosedQuestionStater extends QuestionCuitState {}

final class ScoreState extends QuestionCuitState {}
