import 'package:bloc/bloc.dart';
import 'package:lua_app/domain/models/MoreAppsModel.dart';
import 'package:lua_app/data/repositories/retrieve_moreapps.dart';

class MoreAppsCubitState {}

class MoreAppsCubitLoading extends MoreAppsCubitState {}

class MoreAppsCubitLoaded extends MoreAppsCubitState {
  List<MoreAppsModel> moreApps = [];

  MoreAppsCubitLoaded({this.moreApps = const []});
}

class MoreAppsCubitError extends MoreAppsCubitState {}

class MoreAppsCubit extends Cubit<MoreAppsCubitState> {
  MoreAppsCubit() : super(MoreAppsCubitLoading());

  void fetchApp() async {
    try {
      final moreApps = await fetchApps();
      emit(MoreAppsCubitLoaded(moreApps: moreApps));
    } catch (error) {
      emit(MoreAppsCubitError());
    }
  }
}
