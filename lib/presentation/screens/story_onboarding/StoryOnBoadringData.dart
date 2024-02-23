import '../../../domain/entities/story_onboarding_content_model.dart';

class StoryOnBoardingData {
  static List<StoryOnBoardingContent> StoryContents = [
    StoryOnBoardingContent(
        localSVGImageLocation: 'images/splash/welcome_splash0.png',
        slogan: 'Lua Mastery Awaits:',
        content: 'Practice Basic to Games, 500+ Questions with Solutions'),
    StoryOnBoardingContent(
        localSVGImageLocation: 'images/splash/welcome_splash1.png',
        slogan: 'Master Lua:',
        content:
            'Interactive Chapters, Lessons, and Quizzes for a Seamless Learning Experience'),
    StoryOnBoardingContent(
        localSVGImageLocation: 'images/splash/welcome_splash2.png',
        slogan: 'Unlock Your Lua Potential: ',
        content:
            '500+ Questions with Explanations, Algorithms, and Flowcharts'),
  ];
}
