import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lua_app/data/repositories/questions_answers.dart';
import 'package:lua_app/presentation/constants/ad_const.dart';

abstract class DashboardState {}

class DashboardStateInitial extends DashboardState {}

class DashboardStateLoaded extends DashboardState {
  final int rngIndex;

  DashboardStateLoaded(this.rngIndex);
}

class QuestionsUpdated extends DashboardState {
  final int rngIndex;

  QuestionsUpdated(this.rngIndex);
}

class DashboardPageChanged extends DashboardState {}

class DashboardStateFiltered extends DashboardState {
  final List<Map<String, dynamic>> filteredQuestions;

  DashboardStateFiltered(this.filteredQuestions);
}

class TabPressedState extends DashboardState {
  TabPressedState();
}

class DashboardCubit extends Cubit<DashboardState> {
  InterstitialAd? _interstitialAd;
  late int rngIndex;

  DashboardCubit() : super(DashboardStateInitial());

  void generateRngIndex() {
    var rng = Random();
    rngIndex = rng.nextInt(QuestionsAnswers.questionsList.length);
    emit(DashboardStateLoaded(rngIndex));
  }

  void createInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdConstant.interstialAd,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) => _interstitialAd = ad,
        onAdFailedToLoad: (LoadAdError error) => _interstitialAd = null,
      ),
    );
  }

  void showInterstitialAd() {
    if (_interstitialAd != null) {
      _interstitialAd!.fullScreenContentCallback =
          FullScreenContentCallback(onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        createInterstitialAd();
      }, onAdFailedToShowFullScreenContent: (ad, error) {
        ad.dispose();
        createInterstitialAd();
      });
      _interstitialAd!.show();
      _interstitialAd = null;
    }
  }

  int getQuestionNumber(String question) {
    return QuestionsAnswers.questionsList.indexWhere((q) => q['q'] == question);
  }

  void toggleQuestionShown(int i) {
    QuestionsAnswers.questionsList[i - 1]["shown"] =
        !QuestionsAnswers.questionsList[i - 1]["shown"];
    emit(QuestionsUpdated(rngIndex));
  }

  void onTabPressed(String route) {
    if ((Random().nextInt(100) + 1) > 30) {
      showInterstitialAd();
    }
    emit(TabPressedState());
  }
}

enum CarouselEvent { next, previous }

class CarouselCubit extends Cubit<int> {
  CarouselCubit() : super(0);

  void goToNext() => emit(state + 1);
  void goToPrevious() => emit(state - 1);
}
