import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:lua_app/data/providers/db_manager.dart';
import 'package:lua_app/presentation/screens/answers/answer_details_cubit.dart';
import 'package:lua_app/presentation/screens/blog/blog_post_cubit.dart';
import 'package:lua_app/presentation/screens/favorites/favorites_cubit.dart';
import 'package:lua_app/presentation/screens/home_screen/dashbboard_cubit.dart';
import 'package:lua_app/presentation/screens/home_screen/homescreen_cubit.dart';
import 'package:lua_app/presentation/screens/series/series_details_cubit.dart';
import 'package:lua_app/presentation/screens/settings/components/more_apps_cubit.dart';
import 'package:lua_app/presentation/screens/learn_now/reading_cubit.dart';
import 'package:lua_app/presentation/screens/series/series_cubit.dart';
import 'package:lua_app/presentation/screens/story_onboarding/story_on_boarding_cubit.dart';
import 'package:lua_app/presentation/screens/authentication/pages/login/loginpage.dart';
import 'presentation/widget/ad_helper_cubit.dart';
import 'presentation/screens/authentication/pages/signUp/sign_up_page.dart';
import 'presentation/screens/blog/blog_post.dart';
import 'presentation/screens/end_chapter_quiz/end_chapter_quiz.dart';
import 'presentation/screens/forum/ask_question.dart';
import 'presentation/screens/forum/forum.dart';
import 'presentation/screens/forum/give_answer.dart';
import 'presentation/screens/series/series_details.dart';
import 'presentation/screens/about_us/about_us.dart';
import 'presentation/screens/answers/answer_details.dart';
import 'presentation/screens/coming_soon/coming_soon.dart';
import 'presentation/screens/home_screen/explore.dart';
import 'presentation/screens/groups/friends.dart';
import 'presentation/screens/groups/groups.dart';
import 'presentation/screens/home_screen/dashboard.dart';
import 'presentation/screens/home_screen/homescreen.dart';
import 'presentation/screens/mcq/final_score.dart';
import 'presentation/screens/mcq/mcq.dart';
import 'presentation/screens/mcq/quiz.dart';
import 'presentation/screens/answers/programming.dart';
import 'presentation/screens/learn_now/reading.dart';
import 'presentation/screens/learn_now/reading_details.dart';
import 'presentation/screens/series/series.dart';
import 'presentation/screens/story_onboarding/story_on_boarding.dart';
import 'presentation/widget/splash_screen.dart';

const String favoriteBox = 'favorites';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("settings");
  await Hive.openBox("userInfo");
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AdCubit()),
        BlocProvider(create: (context) => BlogPostCubit([])),
        BlocProvider(create: (context) => TabIndexCubit()),
        BlocProvider(create: (context) => PageControllerCubit()),
        BlocProvider(create: (context) => MoreAppsCubit()),
        BlocProvider(create: (context) => IntroPageCubit()),
        BlocProvider(create: (context) => SeriesCubit()),
        BlocProvider(create: (context) => FavoritesCubit(DbManager())),
        BlocProvider(create: (context) => ReadingCubit()),
        BlocProvider(create: (context) => SeriesCubit()),
        BlocProvider(create: (context) => SeriesDetailsCubit(context)),
        BlocProvider(create: (context) => SeriesCubit()),
        BlocProvider(create: (context) => AnswerDetailsCubit(context)),
        BlocProvider(create: (context) => CarouselCubit()),
        BlocProvider(create: (context) => DashboardCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'splashScreen',
        routes: {
          'homePage': (context) => const HomeScreen(),
          'splashScreen': (context) => const SplashScreen(),
          'welcomeScreen': (context) => const StoryOnBoarding(),
          'dashboard': (context) => Dashboard(),
          'registerScreen': (context) => const SignUpPage(),
          'aboutScreen': (context) => const AboutUs(),
          'learn': (context) => Reading(),
          'learnDetail': (context) => const ReadingDetails(),
          'friends': (context) => const FriendsSection(),
          'groups': (context) => const GroupsSection(),
          'comingSoon': (context) => const ComingSoon(),
          'mcq': (context) => const MCQ(),
          'forum': (context) => const Forum(),
          'askQuestion': (context) => const AskQuestion(),
          'giveAnswer': (context) => const GiveAnswer(),
          'finalScore': (context) => const FinalScore(),
          'seriesdetails': (context) => const SeriesDetailsScreen(),
          'explore': (context) => const ExplorePage(),
          'blogpost': (context) => const BlogPost(),
          'programming0': (context) => const Programming(
              startIndex: 1, endIndex: 232, heading: "Basic Programming"),
          'programming1': (context) => const Programming(
              startIndex: 233, endIndex: 279, heading: "Advanced Programming"),
          'programming2': (context) => const Programming(
              startIndex: 284, endIndex: 313, heading: "Arrays Question"),
          'programming3': (context) => const Programming(
              startIndex: 322, endIndex: 347, heading: "Basic C programs"),
          'answerDetails': (context) => const AnswerDetailsScreen(),
          'series': (context) => const Series(),
          'endChapterQuiz': (context) => const EndChapterQuizPage(),
          'quizPage': (context) => const QuizPage(),
          'loginPage': (context) => const LoginPage(),
          //'setting' : (context) => const SettingsPage()
        },
      ),
    );
  }
}
