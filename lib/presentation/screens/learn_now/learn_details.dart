import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:lua_app/presentation/screens/learn_now/learn_details_cubit.dart';
import 'package:lua_app/presentation/screens/learn_now/reading.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../widget/ad_helper.dart';
import '../../../data/repositories/contents.dart';
import '../../../domain/entities/study_list.dart';
import '../end_chapter_quiz/end_chapter_quiz_result.dart';

class LearnPage extends StatelessWidget {
  final StudyList item;
  final List<int> index;

  const LearnPage({Key? key, required this.item, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LearnPageCubit(item: item, index: index),
      child: BlocBuilder<LearnPageCubit, LearnDetailsState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              title: Text(
                "${BlocProvider.of<LearnPageCubit>(context).page}/${Contents.contentsList[0]['items'][BlocProvider.of<LearnPageCubit>(context).index[0]]['content'][BlocProvider.of<LearnPageCubit>(context).index[1]]['page_length']}",
              ),
              centerTitle: true,
              elevation: 0,
            ),
            body: InkWell(
              onTap: () {
                BlocProvider.of<LearnPageCubit>(context).changeVisibility();
              },
              child: SingleChildScrollView(
                child: Container(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.9,
                  ),
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.06),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AnimatedOpacity(
                              curve: Curves.linear,
                              opacity: BlocProvider.of<LearnPageCubit>(context)
                                  .currentOpacity,
                              duration: const Duration(seconds: 1),
                              child: Html(
                                style: {
                                  'body': Style(
                                    fontSize: FontSize(
                                        MediaQuery.of(context).size.height *
                                            0.03),
                                    color: Colors.black,
                                    fontFamily: 'LatoBold',
                                    textAlign: TextAlign.center,
                                  ),
                                },
                                data: Contents.contentsList[0]['items'][
                                        BlocProvider.of<LearnPageCubit>(context)
                                            .index[0]]['content'][
                                    BlocProvider.of<LearnPageCubit>(context)
                                        .index[1]]['title'],
                              ),
                            ),
                            const AppAds(),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01),
                            BlocBuilder<LearnPageCubit, LearnDetailsState>(
                              builder: (context, state) {
                                return Column(
                                  children: [
                                    for (var i = 0;
                                        i <
                                            Contents
                                                .contentsList[0]['items'][
                                                    BlocProvider.of<LearnPageCubit>(
                                                            context)
                                                        .index[0]]['content'][
                                                    BlocProvider.of<LearnPageCubit>(
                                                            context)
                                                        .index[1]]
                                                    ['page${BlocProvider.of<LearnPageCubit>(context).page}']
                                                .length;
                                        i++)
                                      Visibility(
                                        visible:
                                            BlocProvider.of<LearnPageCubit>(
                                                    context)
                                                .visible[i],
                                        child: Html(
                                          style: {
                                            'body': Style(
                                              fontSize: FontSize(
                                                  MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.02),
                                              color: Colors.black,
                                              fontFamily: 'Lato',
                                              textAlign: TextAlign.justify,
                                            ),
                                          },
                                          data: Contents.contentsList[0]
                                                      ['items'][BlocProvider.of<
                                                          LearnPageCubit>(context)
                                                      .index[0]]['content']
                                                  [BlocProvider.of<LearnPageCubit>(context).index[1]]
                                              ['page${BlocProvider.of<LearnPageCubit>(context).page}']['tap${i + 1}'],
                                        ),
                                      ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      BlocBuilder<LearnPageCubit, LearnDetailsState>(
                        builder: (context, state) {
                          final cubit =
                              BlocProvider.of<LearnPageCubit>(context);
                          final contentLength = Contents
                              .contentsList[0]['items'][cubit.index[0]]
                                  ['content'][cubit.index[1]]
                                  ['page${cubit.page}']
                              .length;
                          return Visibility(
                            visible: !cubit.visible[contentLength],
                            child: const Text(
                              "Tap to continue",
                              style: TextStyle(color: Colors.red),
                            ),
                          );
                        },
                      ),
                      BlocBuilder<LearnPageCubit, LearnDetailsState>(
                        builder: (context, state) {
                          return Visibility(
                            visible: BlocProvider.of<LearnPageCubit>(context).visible[
                                Contents
                                    .contentsList[0]['items'][
                                        BlocProvider.of<LearnPageCubit>(context)
                                            .index[0]]['content'][
                                        BlocProvider.of<LearnPageCubit>(context)
                                            .index[1]]
                                        ['page${BlocProvider.of<LearnPageCubit>(context).page}']
                                    .length],
                            child: ElevatedButton(
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                if (BlocProvider.of<LearnPageCubit>(context)
                                        .page ==
                                    Contents.contentsList[0]['items'][
                                            BlocProvider.of<LearnPageCubit>(
                                                    context)
                                                .index[0]]['content'][
                                        BlocProvider.of<LearnPageCubit>(context)
                                            .index[1]]['page_length']) {
                                  if (BlocProvider.of<LearnPageCubit>(context)
                                              .index[1] +
                                          1 ==
                                      Contents.contentsList[0]['items'][
                                          BlocProvider.of<LearnPageCubit>(
                                                  context)
                                              .index[0]]['chapter_length']) {
                                    int score = await Navigator.pushNamed(
                                        context, 'endChapterQuiz',
                                        arguments: Contents.contentsList[0]
                                                ['items'][
                                            BlocProvider.of<LearnPageCubit>(
                                                    context)
                                                .index[0]]['quiz']) as int;
                                    int totalScore = Contents
                                        .contentsList[0]['items'][
                                            BlocProvider.of<LearnPageCubit>(
                                                    context)
                                                .index[0]]['quiz']
                                        .length;
                                    bool passed = score >=
                                            ((60 / 100) * totalScore).round()
                                        ? true
                                        : false;
                                    if (passed) {
                                      prefs.setBool(
                                          BlocProvider.of<LearnPageCubit>(
                                                  context)
                                              .item
                                              .title,
                                          true);
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                              endChapterResultSnackBar(context,
                                                  passed, score, totalScore));
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                              endChapterResultSnackBar(context,
                                                  passed, score, totalScore));
                                    }
                                  } else {
                                    prefs.setBool(
                                        BlocProvider.of<LearnPageCubit>(context)
                                            .item
                                            .title,
                                        true);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Reading()),
                                    );
                                  }
                                } else {
                                  BlocProvider.of<LearnPageCubit>(context)
                                      .changePage();
                                }
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Text(
                                  BlocProvider.of<LearnPageCubit>(context).page ==
                                          Contents.contentsList[0]
                                                  ['items'][BlocProvider.of<
                                                      LearnPageCubit>(context)
                                                  .index[0]]['content'][
                                              BlocProvider.of<LearnPageCubit>(context)
                                                  .index[1]]['page_length']
                                      ? 'Done'
                                      : 'Next',
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
