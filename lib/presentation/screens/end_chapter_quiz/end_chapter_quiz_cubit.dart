import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum QuizStatus { loading, loaded }

class QuizState {
  final int level;
  final int score;
  final int correctGuess;
  final String selectedAnswer;
  final QuizStatus status;
  final CountDownController controller;

  const QuizState({
    required this.level,
    required this.score,
    required this.correctGuess,
    required this.selectedAnswer,
    required this.status,
    required this.controller,
  });

  QuizState copyWith({
    int? level,
    int? score,
    int? correctGuess,
    String? selectedAnswer,
    QuizStatus? status,
    CountDownController? controller,
  }) {
    return QuizState(
      level: level ?? this.level,
      score: score ?? this.score,
      correctGuess: correctGuess ?? this.correctGuess,
      selectedAnswer: selectedAnswer ?? this.selectedAnswer,
      status: status ?? this.status,
      controller: controller ?? this.controller,
    );
  }
}

class QuizCubit extends Cubit<QuizState> {
  final CountDownController controller = CountDownController();

  QuizCubit()
      : super(QuizState(
          level: 1,
          score: 0,
          correctGuess: -1,
          selectedAnswer: '',
          status: QuizStatus.loading,
          controller: CountDownController(),
        ));

  void answerQuestion(
      String answer, List<Map<String, dynamic>> questionAnswer) {
    if (state.correctGuess == -1) {
      final selectedAnswer = answer;
      int correctGuess = -1;
      int score = state.score;

      if (answer == questionAnswer[state.level - 1]['answer']) {
        score++;
        correctGuess = 1;
      } else {
        correctGuess = 0;
      }

      emit(state.copyWith(
          score: score,
          correctGuess: correctGuess,
          selectedAnswer: selectedAnswer));
    }
  }

  void nextQuestion(List<Map<String, dynamic>> questionAnswer) {
    if (state.level < questionAnswer.length) {
      emit(state.copyWith(level: state.level + 1, correctGuess: -1));
    } else {
      // Quiz completed
    }
  }
}
