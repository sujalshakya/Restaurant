import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lua_app/presentation/screens/story_onboarding/StoryOnBoadringData.dart';

enum StoryOnBoardingState { initial, skip }

class IntroPageCubit extends Cubit<StoryOnBoardingState> {
  final PageController _pageController = PageController(keepPage: false);

  IntroPageCubit() : super(StoryOnBoardingState.initial) {
    _pageController.addListener(onPageChanged);
  }
  PageController get pageController => _pageController;

  void onPageChanged() {
    if (_pageController.page == StoryOnBoardingData.StoryContents.length - 1) {
      emit(StoryOnBoardingState.skip);
    }
  }

  void goToNextPage() {
    if (_pageController.page! < StoryOnBoardingData.StoryContents.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    } else {
      emit(StoryOnBoardingState.skip);
    }
  }

  @override
  Future<void> close() {
    _pageController.dispose();
    return super.close();
  }
}
