import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lua_app/presentation/widget/splash_screen_cubit.dart';
import 'package:lua_app/presentation/screens/home_screen/homescreen.dart';
import 'package:lua_app/presentation/screens/story_onboarding/story_on_boarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashScreenCubit()..check(),
      child: BlocListener<SplashScreenCubit, SplashScreenState>(
        listener: (context, state) {
          if (state == SplashScreenState.firstTimeInit) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const StoryOnBoarding()),
            );
          } else if (state == SplashScreenState.notFirstTimeInit) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          }
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 0.16,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/logo/logo.png"),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.01,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: Center(
                    child: Text(
                      "Copyright © 2023 Dinga Vinga",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.height * 0.015,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
