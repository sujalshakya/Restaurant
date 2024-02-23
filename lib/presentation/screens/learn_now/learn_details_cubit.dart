import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/repositories/contents.dart';
import '../../../../domain/entities/study_list.dart';

class LearnPageCubit extends Cubit<LearnDetailsState> {
  final StudyList item;
  final List<int> index;

  late int page;
  late bool isVisible;
  late double currentOpacity;
  late int i;
  late List<bool> visible;

  LearnPageCubit({required this.item, required this.index})
      : super(LearnPageInitial()) {
    page = 1;
    isVisible = false;
    currentOpacity = 0;
    i = 0;
    visible = List<bool>.filled(
      Contents
              .contentsList[0]['items'][index[0]]['content'][index[1]]
                  ['page$page']
              .length +
          1,
      false,
    );

    Future.delayed(const Duration(milliseconds: 250), () {
      currentOpacity = 1;
      emit(LearnPageUpdated());
    });
  }

  void changeVisibility() {
    visible[i] = true;
    if (i <
        Contents
            .contentsList[0]['items'][index[0]]['content'][index[1]]
                ['page$page']
            .length) i++;
    emit(LearnPageUpdated());
  }

  void changePage() {
    page++;
    visible = List<bool>.filled(
      Contents
              .contentsList[0]['items'][index[0]]['content'][index[1]]
                  ['page$page']
              .length +
          1,
      false,
    );
    i = 0;
    emit(LearnPageUpdated());
  }
}

abstract class LearnDetailsState {}

class LearnPageInitial extends LearnDetailsState {}

class LearnPageUpdated extends LearnDetailsState {}
