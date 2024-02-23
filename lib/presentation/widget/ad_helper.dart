import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lua_app/presentation/widget/ad_helper_cubit.dart';

class AppAds extends StatelessWidget {
  const AppAds({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdCubit, AdState>(
      builder: (context, state) {
        if (state is AdLoading) {
          return Container(child: Text(""));
        } else if (state is AdLoaded) {
          return Container(
            alignment: Alignment.center,
            width: state.bannerAd.size.width.toDouble(),
            margin: const EdgeInsets.only(bottom: 10),
            height: state.bannerAd.size.height.toDouble(),
            child: AdWidget(ad: state.bannerAd),
          );
        } else if (state is AdFailed) {
          return Text('Error loading banner ad: ${state.errorMessage}');
        } else {
          return const SizedBox(height: 0, width: 0);
        }
      },
    );
  }
}
