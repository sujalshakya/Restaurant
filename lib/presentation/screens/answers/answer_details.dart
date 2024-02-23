//import 'dart:html';

import 'dart:io';
import 'dart:ui';

import 'package:any_syntax_highlighter/any_syntax_highlighter.dart';
import 'package:any_syntax_highlighter/themes/any_syntax_highlighter_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lua_app/presentation/screens/answers/answer_details_cubit.dart';

import '../../constants/colors.dart';
import '../../../data/providers/db_manager.dart';
import '../../../data/repositories/questions_answers.dart';
import '../../widget/ad_helper.dart';
import '../../widget/bottom_navbar_button.dart';
import '../../widget/dark_mode.dart';
import '../../widget/text_normal.dart';
import '../../widget/text_title.dart';
import '../../constants/constant.dart';

class AnswerDetailsScreen extends StatelessWidget {
  const AnswerDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnswerDetailsCubit, AnswerDetailsState>(
      builder: (context, state) {
        if (state is AnswerDetailsInitial) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is AnswerDetailsLoaded) {
          return _buildScreen(context, state);
        } else {
          return const Center(
            child: Text('Error occurred!'),
          );
        }
      },
    );
  }

  Widget _buildScreen(BuildContext context, AnswerDetailsLoaded state) {
    bool algorithmSelected = state.algorithmSelected;
    bool activeConnection = state.activeConnection;
    int i = state.index;
    bool isAlreadyFav = state.isAlreadyFav;
    bool showOutput = state.showOutput;

    final DbManager dbManager = DbManager();
    final List<Map<String, dynamic>> questionsList =
        QuestionsAnswers.questionsList;

    return Scaffold(
      backgroundColor: DarkMode.isDarkMode
          ? Colors.black
          : const Color.fromARGB(255, 227, 227, 227),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.primary,
          toolbarHeight: MediaQuery.of(context).size.height * 0.08,
          title: const Text("Answer Details",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                fontFamily: "Lato",
              )),
          actions: [
            IconButton(
                onPressed: () {
                  Favorites data = Favorites(
                    no: questionsList[i]['no'],
                  );
                  isAlreadyFav
                      ? dbManager.deleteFavorite(data.no)
                      : dbManager.insertFavorite(data);
                  context.read<AnswerDetailsCubit>().isAlreadyFavToggle();
                },
                icon: isAlreadyFav
                    ? const Icon(
                        Icons.bookmark,
                        size: 35,
                        color: Colors.amber,
                      )
                    : const Icon(Icons.bookmark_border, size: 35)),
          ]),
      body: Column(children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: DarkMode.isDarkMode ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(children: [
                    questionTabs(context, questionsList[i]["q"]),
                    answerTabs(
                        context, questionsList[i]["a"], state.showOutput),
                  ])),
              const SizedBox(height: 10),
              const AppAds(),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: DarkMode.isDarkMode ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            boxShadow: [
                              if (!DarkMode.isDarkMode)
                                const BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 3,
                                    offset: Offset(0, 2))
                            ],
                            color: DarkMode.isDarkMode
                                ? Colors.black
                                : Colors.white,
                            borderRadius: DarkMode.isDarkMode
                                ? BorderRadius.circular(0)
                                : BorderRadius.circular(10),
                            border: Border.all(
                                color: DarkMode.isDarkMode
                                    ? Colors.white
                                    : AppColor.primary),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: algorithmSelected
                                        ? AppColor.primary
                                        : Colors.white,
                                  ),
                                  child: TextButton(
                                      child: Text("Algorithm",
                                          style: TextStyle(
                                              fontFamily: "Lato",
                                              color: DarkMode.isDarkMode
                                                  ? algorithmSelected
                                                      ? Colors.white
                                                      : Colors.black
                                                  : algorithmSelected
                                                      ? Colors.white
                                                      : Colors.black)),
                                      onPressed: () {
                                        context
                                            .read<AnswerDetailsCubit>()
                                            .algorithmSelectedTrue();
                                      }),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: algorithmSelected
                                        ? Colors.white
                                        : AppColor.primary,
                                  ),
                                  child: TextButton(
                                      child: Text("Flowchart",
                                          style: TextStyle(
                                              fontFamily: "Lato",
                                              color: DarkMode.isDarkMode
                                                  ? algorithmSelected
                                                      ? Colors.black
                                                      : Colors.white
                                                  : algorithmSelected
                                                      ? Colors.black
                                                      : Colors.white)),
                                      onPressed: () {
                                        context
                                            .read<AnswerDetailsCubit>()
                                            .algorithmSelectedFalse();
                                      }),
                                ),
                              ),
                            ],
                          )),
                      Container(
                          margin: const EdgeInsets.only(
                              top: 10, left: 10, right: 10, bottom: 10),
                          child: algorithmSelected
                              ? Text(questionsList[i]["e"],
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                      fontSize: 15, fontFamily: "Lato"))
                              : !activeConnection
                                  ? Column(
                                      children: [
                                        Image.asset(
                                          "images/no_internet.gif",
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.3,
                                        ),
                                        const Text("Please Connect To Internet",
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Lato",
                                                color: Colors.grey)),
                                      ],
                                    )
                                  : Image.network(
                                      questionsList[i]["f"] ??
                                          "https://allbachelor.com/wp-content/uploads/2022/08/9341-not-found-2.gif",
                                      fit: BoxFit.contain,
                                      frameBuilder:
                                          (_, image, loadingBuilder, __) {
                                        if (loadingBuilder == null) {
                                          return const SizedBox(
                                            height: 300,
                                            child: Center(
                                                child:
                                                    CircularProgressIndicator()),
                                          );
                                        }
                                        return image;
                                      },
                                      loadingBuilder: (BuildContext context,
                                          Widget image,
                                          ImageChunkEvent? loadingProgress) {
                                        if (loadingProgress == null) {
                                          return image;
                                        }
                                        return SizedBox(
                                          height: 300,
                                          child: Center(
                                            child: CircularProgressIndicator(
                                              value: loadingProgress
                                                          .expectedTotalBytes !=
                                                      null
                                                  ? loadingProgress
                                                          .cumulativeBytesLoaded /
                                                      loadingProgress
                                                          .expectedTotalBytes!
                                                  : null,
                                            ),
                                          ),
                                        );
                                      },
                                    )),
                    ],
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(18),
                margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: DarkMode.isDarkMode ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0061FF),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: TextNormal(
                          text: "Explanation",
                          size: 16,
                          fontFamily: "Lato",
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Text(
                        questionsList[i]["explanation"],
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Lato",
                          height: 2,
                          fontWeight: FontWeight.w400,
                          color:
                              DarkMode.isDarkMode ? Colors.white : Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                    ]),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            ]),
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            spreadRadius: 4,
            offset: Offset(0, 4),
          )
        ]),
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottomNavBarButton(
                context, 'Previous', const Color(0xFFD9D9D9), Colors.black,
                () async {
              if (i > 0) {
                context.read<AnswerDetailsCubit>().previousButton();
              }
            }),
            bottomNavBarButton(
                context, 'Next', const Color(0xFF0061FF), Colors.white,
                () async {
              if (i < questionsList.length - 1) {
                context.read<AnswerDetailsCubit>().nextButton();
              }
            }),
          ],
        ),
      ),
    );
  }
}

Column questionTabs(BuildContext context, String question) {
  return Column(
    children: [
      Container(
        width: MediaQuery.of(context).size.width * 0.96,
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          boxShadow: [
            if (!DarkMode.isDarkMode)
              const BoxShadow(
                  color: Colors.grey, blurRadius: 2, offset: Offset(0, 1))
          ],
          color: DarkMode.isDarkMode ? Colors.black : Colors.white,
          borderRadius: DarkMode.isDarkMode
              ? BorderRadius.circular(0)
              : BorderRadius.circular(10),
          border: Border.all(
              color: DarkMode.isDarkMode ? Colors.white : AppColor.primary),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width * 0.18,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text("Q",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.06,
                        fontFamily: "Lato",
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
                    fontFamily: "Lato",
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                    color: DarkMode.isDarkMode ? Colors.white : Colors.black,
                  )),
            ),
          ],
        ),
      ),
    ],
  );
}

Column answerTabs(BuildContext context, String answer, bool showOutput) {
  final List<Map<String, dynamic>> questionsList =
      QuestionsAnswers.questionsList;
  int i = 0;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Container(
        width: MediaQuery.of(context).size.width * 0.96,
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.95,
        ),
        margin: const EdgeInsets.only(top: 15, right: 10, left: 0, bottom: 15),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: AnySyntaxHighlighter(
          answer,
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
          textAlign: TextAlign.start,
          lineNumbers: true,
          fontSize: MediaQuery.of(context).size.width * 0.045,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: AppColor.secondary.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () => context.read<AnswerDetailsCubit>().outputToggle(),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextNormal(
                  text: "Output",
                  size: 18,
                  color: Colors.white,
                  fontFamily: 'Lato',
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Icon(
                  showOutput
                      ? Icons.arrow_upward_outlined
                      : Icons.arrow_downward_outlined,
                  color: Colors.white,
                  size: 18,
                )
              ],
            )),
      ),
      if (showOutput)
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.symmetric(vertical: 20),
          width: MediaQuery.of(context).size.width * 0.96,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                width: MediaQuery.of(context).size.width * 0.96,
                color: AppColor.primary.withOpacity(0.5),
                child: TextTitle(
                  text: 'Input',
                  size: 18,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: TextNormal(
                  text: questionsList[i]["input"],
                  size: 18,
                  fontFamily: 'Lato',
                  color: black1,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                width: MediaQuery.of(context).size.width * 0.96,
                color: AppColor.primary.withOpacity(0.5),
                child: TextTitle(
                  text: 'Output',
                  size: 18,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: TextNormal(
                  text: questionsList[i]["output"],
                  size: 18,
                  fontFamily: 'Lato',
                  color: black1,
                ),
              ),
            ],
          ),
        )
    ],
  );
}
