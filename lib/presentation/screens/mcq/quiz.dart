import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import '../../widget/text_normal.dart';
import '../../widget/text_title.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

final questionAnswer = [
  {
    'question': 'What is the full form of HTML?',
    'answer': 'Hyper Text Markup Language',
    'options': [
      'Hyper Text Markup',
      'Hyper Text Markup Language',
      'Hyper Text Language',
      'Hyper Markup Language'
    ]
  },
  {
    'question': 'What is the full form of CSS?',
    'answer': 'Cascading Style Sheet',
    'options': [
      'Cascading Style',
      'Cascading Sheet',
      'Cascading Sheet Style',
      'Cascading Style Sheet'
    ]
  },
  {
    'question': 'What is the full form of JS?',
    'answer': 'JavaScript',
    'options': ['Java', 'JavaScript', 'Script', 'None of the above']
  },
  {
    'question': 'What is the full form of PHP?',
    'answer': 'Hypertext Preprocessor',
    'options': [
      'Hypertext',
      'Preprocessor',
      'Hypertext Preprocessor',
      'None of the above'
    ]
  },
  {
    'question': 'What is the full form of SQL?',
    'answer': 'Structured Query Language',
    'options': [
      'Structured Query Language',
      'Structured Language',
      'Both a and b',
      'None of the above'
    ]
  },
];

class _QuizPageState extends State<QuizPage> {
  final controller = CountDownController();
  int level = 1;
  int score = 0;
  int correctGuess = -1;
  String selectedAnswer = '';

  @override
  Widget build(BuildContext context) {
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
                      )),
                  TextTitle(
                    text: 'Level $level',
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
                            text: '100 -> Score : $score',
                            size: 22,
                            color: Colors.white)
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
                            MediaQuery.of(context).size.width * 0.1),
                        topRight: Radius.circular(
                            MediaQuery.of(context).size.width * 0.1))),
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
                    Radius.circular(MediaQuery.of(context).size.width * 0.1),
                  ),
                ),
                child: CircularCountDownTimer(
                    controller: controller,
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
                        fontWeight: FontWeight.bold),
                    onComplete: () {
                      setState(() {
                        if (level < questionAnswer.length) {
                          correctGuess = -1;
                          level++;
                          controller.restart();
                        } else {
                          Navigator.pop(context);
                        }
                      });
                    }),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.26,
              child: Column(
                children: [
                  Center(
                      child: TextTitle(
                          text:
                              questionAnswer[level - 1]['question'].toString(),
                          size: 22,
                          color: Colors.black)),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      answerButton(context, 'A',
                          (questionAnswer[level - 1]['options'] as List)[0]),
                      answerButton(context, 'B',
                          (questionAnswer[level - 1]['options'] as List)[1]),
                      answerButton(context, 'C',
                          (questionAnswer[level - 1]['options'] as List)[2]),
                      answerButton(context, 'D',
                          (questionAnswer[level - 1]['options'] as List)[3]),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (level < questionAnswer.length) {
                              correctGuess = -1;
                              level++;
                              controller.restart();
                            } else {
                              Navigator.pop(context);
                            }
                          });
                        },
                        child: Text(
                            level == questionAnswer.length
                                ? 'Continue'
                                : 'Next',
                            style: const TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(
                                MediaQuery.of(context).size.width * 0.9,
                                MediaQuery.of(context).size.height * 0.07),
                            backgroundColor: const Color(0xff0061FF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6))),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            circleButtons(context, Icons.numbers),
                            circleButtons(context, Icons.fast_forward),
                            circleButtons(context, Icons.phone),
                            circleButtons(context, Icons.alarm),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget answerButton(BuildContext context, String questionNo, String answer) {
    return Container(
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width * 0.9,
                  MediaQuery.of(context).size.height * 0.08),
              backgroundColor: isCorrectAnswer(answer),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0))),
          onPressed: () {
            if (correctGuess == -1) {
              setState(() {
                selectedAnswer = answer;
                if (answer == questionAnswer[level - 1]['answer']) {
                  if (correctGuess == -1) {
                    score++;
                    correctGuess = 1;
                  }
                } else {
                  correctGuess = 0;
                }
              });
            }
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextNormal(
                text: questionNo,
                size: 18,
                color: Colors.black,
                fontFamily: 'Lato',
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              TextNormal(
                text: answer,
                size: 18,
                color: Colors.black,
                fontFamily: 'Lato',
              ),
            ],
          )),
    );
  }

  Color isCorrectAnswer(answer) {
    if (correctGuess != -1 && answer == questionAnswer[level - 1]['answer']) {
      return Colors.green;
    } else if (correctGuess != -1 && selectedAnswer == answer) {
      return Colors.red;
    } else if (correctGuess == -1) {
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
