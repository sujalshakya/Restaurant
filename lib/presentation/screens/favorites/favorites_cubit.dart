import 'package:bloc/bloc.dart';
import 'package:lua_app/data/providers/db_manager.dart';
import 'package:lua_app/data/repositories/questions_answers.dart';

// Define states
abstract class FavoritesState {}

class FavoritesLoading extends FavoritesState {}

class FavoritesWithData extends FavoritesState {
  final List<Favorites> data;

  FavoritesWithData(this.data);
}

class QuestionsUpdated extends FavoritesState {}

class FavoritesEmpty extends FavoritesState {}

// Define events
abstract class FavoritesEvent {}

class FetchFavorites extends FavoritesEvent {}

// Define Cubit
class FavoritesCubit extends Cubit<FavoritesState> {
  final DbManager dbManager;

  FavoritesCubit(this.dbManager) : super(FavoritesLoading());

  void fetchFavorites() async {
    emit(FavoritesLoading());
    try {
      final favorites = await dbManager.getFavoriteList();
      if (favorites.isEmpty) {
        emit(FavoritesEmpty());
      } else {
        emit(FavoritesWithData(favorites));
      }
    } catch (e) {
      // Handle error
    }
  }

  void toggleQuestionVisibility(int i) {
    QuestionsAnswers.questionsList[i - 1]["shown"] =
        !QuestionsAnswers.questionsList[i - 1]["shown"];
    emit(QuestionsUpdated());
  }
}
