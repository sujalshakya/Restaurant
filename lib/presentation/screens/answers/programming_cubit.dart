import 'package:flutter_bloc/flutter_bloc.dart';

class ProgrammingCubit extends Cubit<List<Map<String, dynamic>>> {
  final List<Map<String, dynamic>> initialQuestionsList;

  ProgrammingCubit(this.initialQuestionsList) : super(initialQuestionsList);

  void filterQuestions(String enteredKeyword) {
    final filteredQuestions = initialQuestionsList
        .where((question) =>
            question["q"].toLowerCase().contains(enteredKeyword.toLowerCase()))
        .toList();
    emit(filteredQuestions);
  }
}
