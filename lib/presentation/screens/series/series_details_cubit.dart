import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lua_app/data/database/db_manager.dart';
import 'package:lua_app/data/repositories/questions_answers.dart';

class SeriesDetailsCubit extends Cubit<SeriesDetailsState> {
  final BuildContext context;
  bool explanationSelected = true;
  bool activeConnection = false;
  String T = "";
  int i = 0;
  bool showOutput = false;
  final DbManager dbManager = DbManager();

  List<Map<String, dynamic>> seriesList = QuestionsAnswers.questionsList
      .where((element) => element["category"] == "series")
      .toList();

  SeriesDetailsCubit(this.context) : super(SeriesDetailsInitial()) {
    checkUserConnection();
    Future.delayed(Duration.zero, () {
      i = ModalRoute.of(context)!.settings.arguments as int;
    });
  }

  void checkUserConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        activeConnection = true;
        T = "Turn off the data and repress again";
      }
    } on SocketException catch (_) {
      activeConnection = false;
      T = "Turn On the data and repress again";
    } finally {
      emit(SeriesDetailsLoaded(
        explanationSelected: explanationSelected,
        activeConnection: activeConnection,
        index: i,
        showOutput: showOutput,
      ));
    }
  }

  void explanationSelectedTrue() {
    explanationSelected = true;
    emit(SeriesDetailsLoaded(
      explanationSelected: explanationSelected,
      activeConnection: activeConnection,
      index: i,
      showOutput: showOutput,
    ));
  }

  void explanationSelectedFalse() {
    explanationSelected = false;
    emit(SeriesDetailsLoaded(
      explanationSelected: explanationSelected,
      activeConnection: activeConnection,
      index: i,
      showOutput: showOutput,
    ));
  }

  void previousButton() {
    i--;
    showOutput = false;
    emit(SeriesDetailsLoaded(
      explanationSelected: explanationSelected,
      activeConnection: activeConnection,
      index: i,
      showOutput: showOutput,
    ));
  }

  void nextButton() {
    i++;
    showOutput = false;
    emit(SeriesDetailsLoaded(
      explanationSelected: explanationSelected,
      activeConnection: activeConnection,
      index: i,
      showOutput: showOutput,
    ));
  }
}

class SeriesDetailsInitial extends SeriesDetailsState {}

class SeriesDetailsState {}

class SeriesDetailsLoaded extends SeriesDetailsState {
  final bool explanationSelected;
  final bool activeConnection;
  final int index;
  final bool showOutput;

  SeriesDetailsLoaded({
    required this.explanationSelected,
    required this.activeConnection,
    required this.index,
    required this.showOutput,
  });
}
