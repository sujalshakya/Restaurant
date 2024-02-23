import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabIndexCubit extends Cubit<int> {
  TabIndexCubit() : super(0);

  void setTabIndex(int index) => emit(index);
}

class PageControllerCubit extends Cubit<PageController> {
  PageControllerCubit() : super(PageController());

  void onClose() {
    state.dispose();
    super.close();
  }
}
