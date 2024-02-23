import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lua_app/data/database/db_manager.dart';
import 'package:lua_app/data/repositories/questions_answers.dart';

class AnswerDetailsCubit extends Cubit<AnswerDetailsState> {
  final BuildContext context;
  bool algorithmSelected = true;
  bool activeConnection = false;
  String T = "";
  int i = 0;
  bool showOutput = false;
  bool isAlreadyFav = false;
  final DbManager dbManager = DbManager();
  final List<Map<String, dynamic>> questionsList =
      QuestionsAnswers.questionsList;

  AnswerDetailsCubit(this.context) : super(AnswerDetailsInitial()) {
    checkUserConnection();
    Future.delayed(Duration.zero, () {
      i = ModalRoute.of(context)!.settings.arguments as int;
      alreadyFav(i);
    });
  }

  alreadyFav(int i) async {
    isAlreadyFav = await dbManager.isFavorite(questionsList[i]['no']);
    emit(AnswerDetailsLoaded(
      algorithmSelected: algorithmSelected,
      activeConnection: activeConnection,
      index: i,
      showOutput: showOutput,
      isAlreadyFav: isAlreadyFav,
    ));
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
      emit(AnswerDetailsLoaded(
        algorithmSelected: algorithmSelected,
        activeConnection: activeConnection,
        index: i,
        showOutput: showOutput,
        isAlreadyFav: isAlreadyFav,
      ));
    }
  }

  isAlreadyFavToggle() {
    if (isAlreadyFav) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          width: MediaQuery.of(context).size.width * 0.5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          behavior: SnackBarBehavior.floating,
          content:
              const Text("Removed from Favorites", textAlign: TextAlign.center),
          duration: const Duration(seconds: 2)));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          width: MediaQuery.of(context).size.width * 0.5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          behavior: SnackBarBehavior.floating,
          content: const Text("Item Added to Favorites",
              textAlign: TextAlign.center),
          duration: const Duration(seconds: 2)));
    }
    isAlreadyFav = !isAlreadyFav;
    emit(AnswerDetailsLoaded(
      algorithmSelected: algorithmSelected,
      activeConnection: activeConnection,
      index: i,
      showOutput: showOutput,
      isAlreadyFav: isAlreadyFav,
    ));
  }

  void algorithmSelectedTrue() {
    algorithmSelected = true;
    emit(AnswerDetailsLoaded(
      algorithmSelected: algorithmSelected,
      activeConnection: activeConnection,
      index: i,
      showOutput: showOutput,
      isAlreadyFav: isAlreadyFav,
    ));
  }

  void algorithmSelectedFalse() {
    algorithmSelected = false;
    emit(AnswerDetailsLoaded(
      algorithmSelected: algorithmSelected,
      activeConnection: activeConnection,
      index: i,
      showOutput: showOutput,
      isAlreadyFav: isAlreadyFav,
    ));
  }

  void previousButton() {
    i--;
    showOutput = false;
    emit(AnswerDetailsLoaded(
      algorithmSelected: algorithmSelected,
      activeConnection: activeConnection,
      index: i,
      showOutput: showOutput,
      isAlreadyFav: isAlreadyFav,
    ));
  }

  void nextButton() {
    i++;
    showOutput = false;
    emit(AnswerDetailsLoaded(
      algorithmSelected: algorithmSelected,
      activeConnection: activeConnection,
      index: i,
      showOutput: showOutput,
      isAlreadyFav: isAlreadyFav,
    ));
  }

  void outputToggle() {
    showOutput = !showOutput;
    emit(AnswerDetailsLoaded(
      algorithmSelected: algorithmSelected,
      activeConnection: activeConnection,
      index: i,
      showOutput: showOutput,
      isAlreadyFav: isAlreadyFav,
    ));
  }
}

class AnswerDetailsInitial extends AnswerDetailsState {}

class AnswerDetailsState {}

class AnswerDetailsLoaded extends AnswerDetailsState {
  final bool algorithmSelected;
  final bool activeConnection;
  final int index;
  final bool showOutput;
  final bool isAlreadyFav;

  AnswerDetailsLoaded({
    required this.algorithmSelected,
    required this.activeConnection,
    required this.index,
    required this.showOutput,
    required this.isAlreadyFav,
  });
}
