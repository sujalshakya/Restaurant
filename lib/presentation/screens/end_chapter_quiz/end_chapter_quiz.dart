import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import '../../widget/ad_helper.dart';
import '../../widget/text_normal.dart';
import '../../widget/text_title.dart';
import 'package:lua_app/presentation/screens/end_chapter_quiz/end_chapter_quiz_cubit.dart';

class EndChapterQuizPage extends StatelessWidget {
  const EndChapterQuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => QuizCubit(),
      child: BlocBuilder<QuizCubit, QuizState>(
        builder: (context, state) {
          final questionAnswer = ModalRoute.of(context)!.settings.arguments
              as List<Map<String, dynamic>>;

          return Scaffold(
            backgroundColor: const Color(0xff0061FF),
            body: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  top: MediaQuery.of(context).size.height * 0.03,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      TextTitle(
                        text: 'Question ${state.level}',
                        size: 22,
                        color: Colors.white,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.05),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.monetization_on,
                              color: Colors.white,
                            ),
                            TextTitle(
                              text: 'Score : ${state.score}',
                              size: 22,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  height: MediaQuery.of(context).size.height * 0.84,
                  width: MediaQuery.of(context).size.width,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          MediaQuery.of(context).size.width * 0.1,
                        ),
                        topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.1,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.height * 0.1,
                  top: MediaQuery.of(context).size.height * 0.11,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          MediaQuery.of(context).size.width * 0.1,
                        ),
                      ),
                    ),
                    child: CircularCountDownTimer(
                      controller: state.controller,
                      duration: 60,
                      fillColor: Colors.white,
                      ringColor: const Color(0xff0061FF),
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.height * 0.1,
                      strokeWidth: 5,
                      isReverse: true,
                      textFormat: 'mm:ss',
                      textStyle: const TextStyle(
                        fontSize: 18,
                        color: Color(0xff0061FF),
                        fontWeight: FontWeight.bold,
                      ),
                      onComplete: () {
                        BlocProvider.of<QuizCubit>(context)
                            .nextQuestion(questionAnswer);
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.26,
                  child: Column(
                    children: [
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: TextTitle(
                            text: questionAnswer[state.level - 1]['question']
                                .toString(),
                            size: 22,
                            color: Colors.black,
                            maxLines: 3,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < 4; i++)
                            answerButton(
                              context,
                              ['A', 'B', 'C', 'D'][i],
                              questionAnswer[state.level - 1]['options'][i],
                              questionAnswer,
                            ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (state.level == questionAnswer.length) {
                                Navigator.pop(context, state.score);
                              } else {
                                BlocProvider.of<QuizCubit>(context)
                                    .nextQuestion(questionAnswer);
                              }
                            },
                            child: Text(
                              state.level == questionAnswer.length
                                  ? 'Continue'
                                  : 'Next',
                              style: const TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(
                                MediaQuery.of(context).size.width * 0.9,
                                MediaQuery.of(context).size.height * 0.07,
                              ),
                              backgroundColor: const Color(0xff0061FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: const AppAds(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget answerButton(
    BuildContext context,
    String questionNo,
    String answer,
    questionAnswer,
  ) {
    return Container(
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(
            MediaQuery.of(context).size.width * 0.9,
            MediaQuery.of(context).size.height * 0.08,
          ),
          backgroundColor: isCorrectAnswer(context, answer, questionAnswer),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        onPressed: () {
          BlocProvider.of<QuizCubit>(context)
              .answerQuestion(answer, questionAnswer);
        },
        child: Row(
          children: [
            TextNormal(
              text: questionNo,
              size: 18,
              color: Colors.black,
              fontFamily: 'Lato',
              maxLines: 3,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextNormal(
                text: answer,
                size: 18,
                color: Colors.black,
                fontFamily: 'Lato',
                maxLines: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color isCorrectAnswer(BuildContext context, answer, questionAnswer) {
    final state = BlocProvider.of<QuizCubit>(context).state;
    if (state.correctGuess != -1 &&
        answer == questionAnswer[state.level - 1]['answer']) {
      return Colors.green;
    } else if (state.correctGuess != -1 && state.selectedAnswer == answer) {
      return Colors.red;
    } else if (state.correctGuess == -1) {
      return const Color(0xffD9D9D9);
    } else {
      return const Color(0xffD9D9D9);
    }
  }
}

Widget circleButtons(BuildContext context, IconData icon) {
  return InkWell(
    onTap: () {},
    child: Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 3,
            offset: const Offset(0, 0),
          ),
        ],
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: const Color(0xff0061FF),
      ),
    ),
  );
}
