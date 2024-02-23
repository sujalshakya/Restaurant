import 'package:flutter_bloc/flutter_bloc.dart';

abstract class DownloadProState {}

class GettingVersionState extends DownloadProState {}

class VersionReceivedState extends DownloadProState {
  final String versionNumber;
  VersionReceivedState(this.versionNumber);
}

class DownloadProCubit extends Cubit<DownloadProState> {
  DownloadProCubit() : super(GettingVersionState());
  void getVersionNumber() {
    Future.delayed(const Duration(seconds: 1), () {
      String versionNumber = "1";
      emit(VersionReceivedState(versionNumber));
    });
  }
}
