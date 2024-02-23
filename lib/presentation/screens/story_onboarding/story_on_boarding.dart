import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:lua_app/presentation/constants/colors.dart';
import 'package:lua_app/presentation/screens/story_onboarding/story_on_boarding_cubit.dart';
import 'package:lua_app/presentation/screens/story_onboarding/StoryOnBoadringData.dart';
import 'package:lua_app/presentation/widget/IntroContentWidget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widget/CusromStretchedTextButtonWidget.dart';
import '../../widget/CustomScaffoldBottomBarWidget.dart';

class StoryOnBoarding extends StatelessWidget {
  const StoryOnBoarding({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IntroPageCubit(),
      child: const StoryOnBoardingView(),
    );
  }
}

class StoryOnBoardingView extends StatelessWidget {
  const StoryOnBoardingView({super.key, Key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final cubit = BlocProvider.of<IntroPageCubit>(context);

    return Scaffold(
      body: SafeArea(
        top: true,
        child: BlocBuilder<IntroPageCubit, StoryOnBoardingState>(
          builder: (context, state) {
            return Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 356,
                      child: PageView.builder(
                        controller: cubit.pageController,
                        scrollDirection: Axis.horizontal,
                        itemCount: StoryOnBoardingData.StoryContents.length,
                        itemBuilder: (context, index) {
                          final introContent =
                              StoryOnBoardingData.StoryContents[index];
                          return IntroContentWidget(
                            screenSize: screenSize,
                            localImageLocation:
                                introContent.localSVGImageLocation,
                            slogan: introContent.slogan,
                            subtitle: introContent.content,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      child: SmoothPageIndicator(
                        controller: cubit.pageController,
                        count: StoryOnBoardingData.StoryContents.length,
                        axisDirection: Axis.horizontal,
                        effect: const ExpandingDotsEffect(
                          dotHeight: 8,
                          dotWidth: 8,
                          spacing: 2,
                          expansionFactor: 3,
                          activeDotColor: AppColor.primary,
                          dotColor: AppColor.gray,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: CustomScaffoldBottomBarWidget(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomStretchedTextButtonWidget(
              buttonText: 'Next',
              onTap: () {
                context.read<IntroPageCubit>().goToNextPage();
                if (cubit.pageController.page ==
                    StoryOnBoardingData.StoryContents.length - 1) {
                  Navigator.pushReplacementNamed(context, "homePage");
                }
              },
            ),
            TextButton(
              onPressed: () {
                var setting = Hive.box("settings");
                setting.put("firstTimeInit", false);
                Navigator.pushReplacementNamed(context, "homePage");
              },
              child: const Text('Skip'),
            ),
          ],
        ),
      ),
    );
  }
}
