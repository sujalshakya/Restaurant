import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'homescreen_cubit.dart';
import 'explore.dart';
import '../favorites/favorites.dart';
import '../settings/settings_page.dart';
import '../../constants/colors.dart';
import 'dashboard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TabIndexCubit()),
        BlocProvider(create: (context) => PageControllerCubit()),
      ],
      child: _HomeScreenContent(),
    );
  }
}

class _HomeScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabIndexCubit, int>(
      builder: (context, selectedIndex) {
        return BlocBuilder<PageControllerCubit, PageController>(
          builder: (context, pageController) {
            return _buildHomeScreen(selectedIndex, pageController, context);
          },
        );
      },
    );
  }

  Widget _buildHomeScreen(
    int selectedIndex,
    PageController pageController,
    BuildContext context,
  ) {
    List<Widget> screens = [
      Dashboard(),
      const ExplorePage(),
      const FavoritesPage(),
      const SettingsPage()
    ];

    final List<GButton> navbarItems = [
      const GButton(icon: IconlyLight.home, text: 'Home'),
      const GButton(icon: IconlyLight.discovery, text: 'Blog'),
      const GButton(icon: IconlyLight.bookmark, text: 'Saved'),
      const GButton(icon: IconlyLight.setting, text: 'Settings'),
    ];

    return WillPopScope(
      onWillPop: () async {
        if (pageController.page?.round() != 0) {
          pageController.animateToPage(
            0,
            duration: const Duration(milliseconds: 200),
            curve: Curves.ease,
          );
          BlocProvider.of<TabIndexCubit>(context).setTabIndex(0);
          return false;
        } else {
          await SystemNavigator.pop();
          return true;
        }
      },
      child: Scaffold(
        body: PageView(
          allowImplicitScrolling: false,
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: screens,
        ),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
              rippleColor: AppColor.primary.withOpacity(0.3),
              hoverColor: Colors.grey.shade700,
              haptic: true,
              tabBorderRadius: 16,
              curve: Curves.easeIn,
              duration: const Duration(milliseconds: 200),
              gap: 8,
              padding: const EdgeInsets.all(16),
              color: Colors.grey,
              activeColor: AppColor.primary,
              iconSize: 24,
              tabBackgroundColor: AppColor.primary.withOpacity(0.1),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              tabs: navbarItems,
              selectedIndex: selectedIndex,
              onTabChange: (index) {
                BlocProvider.of<TabIndexCubit>(context).setTabIndex(index);
                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.ease,
                );
              },
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
          ),
        ),
      ),
    );
  }
}
