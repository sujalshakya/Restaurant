import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lua_app/presentation/constants/ad_const.dart';

abstract class AdState {}

class AdLoading extends AdState {}

class AdLoaded extends AdState {
  final BannerAd bannerAd;
  AdLoaded(this.bannerAd);
}

class AdFailed extends AdState {
  final String errorMessage;
  AdFailed(this.errorMessage);
}

class AdCubit extends Cubit<AdState> {
  AdCubit() : super(AdLoading());

  void loadBannerAd() {
    BannerAd(
      adUnitId: AdConstant.bannerAd,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) => emit(AdLoaded(ad as BannerAd)),
        onAdFailedToLoad: (ad, err) {
          debugPrint('Failed to load a banner ad: ${err.message}');
          emit(AdFailed(err.message));
          ad.dispose();
        },
      ),
    ).load();
  }
}
