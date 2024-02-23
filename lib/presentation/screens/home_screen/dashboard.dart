import 'dart:ui';

import 'package:any_syntax_highlighter/any_syntax_highlighter.dart';
import 'package:any_syntax_highlighter/themes/any_syntax_highlighter_theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hive/hive.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lua_app/presentation/screens/home_screen/dashbboard_cubit.dart';
import '../../widget/app_drawer.dart';
import '../../widget/dark_mode.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:math';
import '../../widget/ad_helper.dart';
import '../../constants/colors.dart';
import '../../../data/repositories/questions_answers.dart';

class Dashboard extends StatelessWidget {
  InterstitialAd? interstitialAd;

  Dashboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = DashboardCubit();
        cubit.generateRngIndex();
        cubit.createInterstitialAd();
        return cubit;
      },
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          if (state is DashboardStateInitial) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          } else if (state is DashboardStateLoaded) {
            return _buildDashboard(context, state.rngIndex);
          } else if (state is QuestionsUpdated) {
            return _buildDashboard(context, state.rngIndex);
          } else if (state is DashboardStateFiltered) {
            return _buildDashboard(
              context,
              0,
            );
          } else {
            return const Scaffold(
              body: Center(child: Text('Error')),
            );
          }
        },
      ),
    );
  }

  Widget _buildDashboard(BuildContext context, int rngIndex) {
    int date = DateTime.now().day;
    int month = DateTime.now().month;

    int random = ((month + 1) * date) ~/ 2;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          flexibleSpace: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text("Lua",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: "Lato",
                              fontSize: 26,
                            )),
                        Text(" Programs",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColor.primary,
                              fontFamily: "Lato",
                              fontSize: 23,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: 2,
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                )),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SearchField(),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.04),
                    child: const Text("Code of the day",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Lato",
                        )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Column(
                        children: [
                          questionOfTheDay(
                            context,
                            random + 1,
                            QuestionsAnswers.questionsList[random]["q"],
                          ),
                          if (QuestionsAnswers.questionsList[random]["shown"])
                            answerTabs(
                                context,
                                QuestionsAnswers.questionsList[random]["a"],
                                QuestionsAnswers.questionsList[random]["no"]),
                          const AppAds(),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: DarkMode.isDarkMode
                            ? Colors.black
                            : AppColor.backgroundColor,
                        borderRadius: BorderRadius.circular(18)),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.04,
                        right: MediaQuery.of(context).size.width * 0.04,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.008),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              tabBuilder(
                                  context,
                                  Icon(
                                    Iconsax.book_1,
                                    color: AppColor.primary,
                                    size: MediaQuery.of(context).size.width *
                                        0.08,
                                  ),
                                  "Learn \n Now",
                                  "learn"),
                              tabBuilder(
                                  context,
                                  Icon(Iconsax.code,
                                      color: AppColor.primary,
                                      size: MediaQuery.of(context).size.width *
                                          0.08),
                                  "Basic\nPrograms",
                                  "programming0"),
                              tabBuilder(
                                  context,
                                  Icon(Iconsax.hierarchy_square,
                                      color: AppColor.primary,
                                      size: MediaQuery.of(context).size.width *
                                          0.08),
                                  "Patterns Programs",
                                  "programming1"),
                            ],
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              tabBuilder(
                                  context,
                                  Icon(Iconsax.folder_2,
                                      color: AppColor.primary,
                                      size: MediaQuery.of(context).size.width *
                                          0.08),
                                  "Arrays\nPrograms",
                                  "programming2"),
                              tabBuilder(
                                  context,
                                  Icon(Iconsax.mobile_programming,
                                      color: AppColor.primary,
                                      size: MediaQuery.of(context).size.width *
                                          0.08),
                                  "Series\nPrograms",
                                  "series"),
                              tabBuilder(
                                  context,
                                  Icon(Iconsax.game,
                                      color: AppColor.primary,
                                      size: MediaQuery.of(context).size.width *
                                          0.08),
                                  "LUA\nGames",
                                  "games"),
                            ],
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.01),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  const AppAds(),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  final List<Color> colors = <Color>[
    AppColor.topdot1,
    AppColor.topdot2,
    AppColor.topdot3
  ];
}

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  List<Map<String, dynamic>> foundQuestions = [];
  final _carouselController = CarouselController();
  int activeIndex = 0;

  void filterQuestions(String enteredKeyword) {
    List<Map<String, dynamic>> filteredQuestions = [];
    if (enteredKeyword.isEmpty) {
      filteredQuestions = [];
    } else {
      filteredQuestions = QuestionsAnswers.questionsList
          .where((question) => question["q"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      foundQuestions = filteredQuestions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height * 0.05,
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.width * 0.01,
            left: MediaQuery.of(context).size.width * 0.03,
            right: MediaQuery.of(context).size.width * 0.03,
          ),
          decoration: BoxDecoration(
            color: DarkMode.isDarkMode ? Colors.grey : Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: TextField(
            textAlign: TextAlign.left,
            onChanged: (enteredKeyword) => filterQuestions(enteredKeyword),
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(8),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: 'Search question or keywords here',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontFamily: "Lato",
                fontWeight: FontWeight.w400,
              ),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        foundQuestions.isNotEmpty
            ? Column(
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  for (int i = 0; i < foundQuestions.length; i++)
                    Column(
                      children: [
                        questionTabs(context, i + 1, foundQuestions[i]["q"]),
                        if (foundQuestions[i]["shown"])
                          answerTabs(context, foundQuestions[i]["a"],
                              foundQuestions[i]["no"]),
                      ],
                    )
                ],
              )
            : SizedBox(
                height: MediaQuery.of(context).size.height * 0.27,
                child: Stack(alignment: AlignmentDirectional.center, children: [
                  CarouselSlider(
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      },
                      viewportFraction: 1,
                      aspectRatio: 16 / 9,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 10),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 700),
                      autoPlayCurve: Curves.ease,
                    ),
                    items: [1, 2].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.93,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'images/banners/banner$i.png'),
                                    fit: BoxFit.contain)),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.055,
                    right: MediaQuery.of(context).size.width * 0.45,
                    child: AnimatedSmoothIndicator(
                        activeIndex: activeIndex,
                        count: 2,
                        effect: ExpandingDotsEffect(
                          dotWidth: 8,
                          dotHeight: 8,
                          activeDotColor: activeIndex == 0
                              ? AppColor.topdot1
                              : activeIndex == 1
                                  ? AppColor.topdot2
                                  : AppColor.topdot3,
                          dotColor: AppColor.primary,
                          spacing: 2,
                        ),
                        onDotClicked: (index) =>
                            _carouselController.animateToPage(index,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeInOut)),
                  ),
                ]),
              ),
      ],
    );
  }
}

Column questionTabs(BuildContext context, int i, String question) {
  List<Map<String, dynamic>> foundQuestions = [];

  return Column(
    children: [
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'answerDetails',
              arguments: foundQuestions
                      .where((element) => element['q'] == question)
                      .toList()[0]["no"] -
                  1);
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.96,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            boxShadow: [
              if (!DarkMode.isDarkMode)
                const BoxShadow(
                    color: Colors.grey, blurRadius: 7, offset: Offset(0, 5))
            ],
            color: DarkMode.isDarkMode ? Colors.black : Colors.white,
            borderRadius: DarkMode.isDarkMode
                ? BorderRadius.circular(0)
                : BorderRadius.circular(10),
            border: Border.all(
                color: DarkMode.isDarkMode ? Colors.white : Colors.black),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: MediaQuery.of(context).size.width * 0.19,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('$i',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.06,
                          color: Colors.white)),
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.70,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(question,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      color: DarkMode.isDarkMode ? Colors.white : Colors.black,
                    )),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 20)
    ],
  );
}

Row answerTabs(BuildContext context, String answer, int i) {
  return Row(
    children: [
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'answerDetails', arguments: i - 1);
        },
        child: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.04,
              right: MediaQuery.of(context).size.width * 0.03,
              bottom: MediaQuery.of(context).size.height * 0.02),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.82,
                  child: AnySyntaxHighlighter(
                    answer,
                    margin: 10,
                    theme: AnySyntaxHighlighterTheme(
                        classStyle: const TextStyle(
                          color: AppColor.secondary,
                        ),
                        staticStyle: const TextStyle(
                          color: Color.fromRGBO(168, 1, 57, 1),
                          fontStyle: FontStyle.normal,
                        ),
                        constructor: const TextStyle(
                          color: Color.fromRGBO(129, 72, 0, 1),
                        ),
                        multilineComment: const TextStyle(
                          color: Color.fromRGBO(117, 103, 103, 1),
                          fontStyle: FontStyle.italic,
                        ),
                        comment: const TextStyle(
                          color: Color.fromRGBO(117, 103, 103, 1),
                          fontStyle: FontStyle.italic,
                        ),
                        keyword: const TextStyle(
                          color: Color.fromRGBO(4, 51, 129, 1),
                          fontWeight: FontWeight.bold,
                        ),
                        identifier: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                        function: const TextStyle(
                          color: Color.fromRGBO(1, 121, 62, 1),
                        ),
                        number: const TextStyle(
                          color: Colors.red,
                        ),
                        string: const TextStyle(
                          color: Color.fromRGBO(11, 63, 1, 1),
                        ),
                        operator: const TextStyle(
                          color: Color.fromRGBO(153, 4, 21, 1),
                        ),
                        separator: const TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                        method: const TextStyle(
                          color: Color.fromRGBO(77, 2, 140, 1),
                        ),
                        private: const TextStyle(
                          color: Color.fromRGBO(77, 57, 57, 1),
                        ),
                        lineNumber: const TextStyle(color: Colors.black),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white,
                        ),
                        fontFeatures: [const FontFeature.slashedZero()]),
                    useGoogleFont: 'Lato',
                    maxLines: 5,
                    textAlign: TextAlign.start,
                    lineNumbers: true,
                    fontSize: MediaQuery.of(context).size.width * 0.045,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.height * 0.01,
                      bottom: MediaQuery.of(context).size.height * 0.01),
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'answerDetails',
                          arguments: i - 1);
                    },
                    //
                    child: const Icon(
                      Icons.arrow_circle_right_outlined,
                      color: AppColor.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

Column iconBuilder(
    Icon icon, Color colors, String text, String route, Color color, context) {
  return Column(children: [
    Card(
      elevation: 0,
      color: DarkMode.isDarkMode ? Colors.black : color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.13,
            child: IconButton(
              onPressed: () async {
                if (route == 'registerScreen') {
                  final loggedIn = await Hive.box("settings")
                      .get("loggedIn", defaultValue: false);
                  if (loggedIn) {
                    Navigator.pushNamed(context, 'forum');
                  } else {
                    Navigator.pushNamed(context, route);
                  }
                } else {
                  Navigator.pushNamed(context, route);
                }
              },
              icon: icon,
            ),
          ),
        ],
      ),
    ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
    Center(
        child: Text(text,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: DarkMode.isDarkMode ? Colors.white : Colors.black))),
  ]);
}

Column tabBuilder(BuildContext context, Icon icon, String text, String route) {
  return Column(
    children: [
      InkWell(
        onTap: () {
          if ((Random().nextInt(100) + 1) > 30) {
            BlocProvider.of<DashboardCubit>(context).showInterstitialAd();
          }

          Navigator.pushNamed(context, route);
        },
        child: Card(
          elevation: 3,
          // color: DarkMode.isDarkMode ? Colors.black : Colors.white10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.14,
            width: MediaQuery.of(context).size.width * 0.25,
            //  padding: const EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
              color: DarkMode.isDarkMode ? Colors.black : Colors.white10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: IconButton(
                      padding: const EdgeInsets.all(0),
                      // padding: EdgeInsets.all(3.0),
                      onPressed: () {
                        Navigator.pushNamed(context, route);
                      },
                      icon: icon,
                      color: DarkMode.isDarkMode ? Colors.white : Colors.black),
                ),
                const Divider(
                    indent: 10,
                    endIndent: 8,
                    thickness: 1,
                    height: 1,
                    color: AppColor.gray),
                Text(text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.015,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.bold,
                        color:
                            DarkMode.isDarkMode ? Colors.white : Colors.black)),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

Column secondTabBuilder(Icon icon, String text, String route, context) {
  return Column(
    children: [
      InkWell(
        onTap: () {
          if ((Random().nextInt(100) + 1) > 50) {
            context.read<DashboardCubit>()._showInterstitialAd();
          }
          appDrawer.inHomeScreen = false;
          Navigator.pushNamed(context, route);
        },
        child: Card(
          margin: const EdgeInsets.only(bottom: 20, top: 20),
          elevation: 3,
          //shadowColor: Colors.grey,
          // color: DarkMode.isDarkMode ? Colors.black : Colors.white10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.18,
            width: MediaQuery.of(context).size.width * 0.40,
            padding: const EdgeInsets.only(left: 0, right: 0),
            decoration: BoxDecoration(
              color: DarkMode.isDarkMode ? Colors.black : Colors.white10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: 70,
                  child: IconButton(
                    padding: const EdgeInsets.all(1.0),
                    onPressed: () {
                      appDrawer.inHomeScreen = false;
                      Navigator.pushNamed(context, route);
                    },
                    icon: icon,
                    color: DarkMode.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
                const Divider(
                    indent: 10,
                    endIndent: 8,
                    thickness: 1,
                    color: AppColor.primary),
                Text(text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.bold,
                        color: DarkMode.isDarkMode
                            ? Colors.white
                            : const Color(0xFF194876))),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

Column questionOfTheDay(BuildContext context, int i, String question) {
  return Column(
    children: [
      InkWell(
        onTap: () {
          context.read<DashboardCubit>().toggleQuestionShown(i);
        },
        child: Card(
          elevation: 0,
          margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
          //shadowColor: AppColor.primary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.93,
            padding: const EdgeInsets.only(top: 15, bottom: 10),
            decoration: BoxDecoration(
              color: DarkMode.isDarkMode ? Colors.black : Colors.white,
              borderRadius: DarkMode.isDarkMode
                  ? BorderRadius.circular(30)
                  : BorderRadius.circular(30),
              // border: Border.all(
              //     color: DarkMode.isDarkMode ? Colors.white : Colors.grey),
            ),
            child: Row(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.04),
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.68,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(question,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: DarkMode.isDarkMode
                                ? Colors.white
                                : Colors.black,
                            fontFamily: "Lato")),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.04,
                          top: MediaQuery.of(context).size.width * 0.03),
                      child: TextButton(
                        onPressed: () {
                          context.read<DashboardCubit>().toggleQuestionShown(i);
                        },
                        child: Text(
                          "View Answer",
                          style: TextStyle(
                            // textAlign: TextAlign.left,
                            fontSize: 12,
                            fontFamily: "Lato",
                            color: DarkMode.isDarkMode
                                ? Colors.white
                                : AppColor.primary,
                          ),
                        ),
                      ))
                ]),
                Container(
                  width: MediaQuery.of(context).size.width * 0.21,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/questionofday.png'),
                        fit: BoxFit.fill),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      const SizedBox(height: 20),
    ],
  );
}
