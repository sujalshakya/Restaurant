import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

enum SplashScreenState { initial, firstTimeInit, notFirstTimeInit }

class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(SplashScreenState.initial);

  Future<void> check() async {
    await Hive.initFlutter();
    await Hive.openBox("settings");
    final firstTimeInit =
        await Hive.box("settings").get("firstTimeInit", defaultValue: true);

    if (firstTimeInit) {
      emit(SplashScreenState.firstTimeInit);
    } else {
      emit(SplashScreenState.notFirstTimeInit);
    }
  }
}
