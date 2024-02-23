import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReadingState {}

class ReadingLoading extends ReadingState {}

class ReadingLoaded extends ReadingState {}

class ReadingError extends ReadingState {
  final String errorMessage;

  ReadingError(this.errorMessage);
}

class ReadingCubit extends Cubit<ReadingState> {
  late SharedPreferences prefs;

  ReadingCubit() : super(ReadingLoading()) {
    _initSharedPreferences();
  }

  void _initSharedPreferences() async {
    try {
      prefs = await SharedPreferences.getInstance();
      emit(ReadingLoaded());
    } catch (e) {
      emit(ReadingError('Failed to initialize SharedPreferences: $e'));
    }
  }
}
