import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lua_app/data/repositories/questions_answers.dart';

class SeriesState {}

class SeriesLoading extends SeriesState {}

class SeriesLoaded extends SeriesState {
  List<Map<String, dynamic>> seriesList;
  SeriesLoaded(this.seriesList);
}

class SeriesCubit extends Cubit<SeriesState> {
  SeriesCubit() : super(SeriesLoading());

  void fetchSeriesList() {
    final seriesList = QuestionsAnswers.questionsList
        .where((element) => element["category"] == "series")
        .toList();
    emit(SeriesLoaded(seriesList));
  }
}
