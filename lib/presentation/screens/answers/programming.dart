import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:lua_app/presentation/screens/answers/programming_cubit.dart';
import '../../widget/ad_helper.dart';
import '../../../data/repositories/questions_answers.dart';
import '../../widget/dark_mode.dart';
import '../../widget/text_normal.dart';

import '../../constants/colors.dart';

class Programming extends StatefulWidget {
  final int startIndex;
  final int endIndex;
  final String heading;
  const Programming({
    Key? key,
    required this.startIndex,
    required this.endIndex,
    required this.heading,
  }) : super(key: key);

  @override
  State<Programming> createState() => _ProgrammingState();
}

class _ProgrammingState extends State<Programming> {
  ScrollController controller = ScrollController();
  late final ProgrammingCubit _programmingCubit;
  List<Map<String, dynamic>> questionsList = [];

  @override
  void initState() {
    questionsList = QuestionsAnswers.questionsList
        .where((element) => (element['no'] >= widget.startIndex &&
            element['no'] <= widget.endIndex))
        .toList();
    _programmingCubit = ProgrammingCubit(questionsList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _programmingCubit,
      child: Scaffold(
        backgroundColor: DarkMode.isDarkMode ? Colors.black : Colors.white,
        body: ColorfulSafeArea(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Row(
                children: [
                  Builder(
                    builder: (BuildContext context) {
                      return IconButton(
                        icon: Icon(Icons.arrow_back,
                            size: 35,
                            color: DarkMode.isDarkMode
                                ? Colors.white
                                : Colors.black),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        tooltip: MaterialLocalizations.of(context)
                            .openAppDrawerTooltip,
                      );
                    },
                  ),
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                        color: DarkMode.isDarkMode
                            ? const Color.fromARGB(137, 208, 208, 208)
                            : Colors.black12,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextField(
                        onChanged: (value) =>
                            _programmingCubit.filterQuestions(value),
                        decoration: const InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(fontFamily: "Lato"),
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search)),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: DarkMode.isDarkMode ? Colors.white : Colors.black,
                thickness: 2,
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: controller,
                  child:
                      BlocBuilder<ProgrammingCubit, List<Map<String, dynamic>>>(
                    builder: (context, questionsList) {
                      return questionsList.isNotEmpty
                          ? Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: Text(widget.heading,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Lato",
                                          color: DarkMode.isDarkMode
                                              ? Colors.white
                                              : AppColor.primary)),
                                ),
                                for (int i = 0; i < questionsList.length; i++)
                                  Column(
                                    children: [
                                      if (i != 0 && i % 10 == 0) const AppAds(),
                                      Column(children: [
                                        questionTabs(
                                          context,
                                          widget.startIndex + i,
                                          i + 1,
                                          questionsList[i]["q"],
                                        ),
                                      ]),
                                    ],
                                  ),
                              ],
                            )
                          : Column(
                              children: [
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.15),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(DarkMode.isDarkMode
                                        ? 'images/not_found_dark.png'
                                        : 'images/not_found.png'),
                                  )),
                                ),
                                TextNormal(
                                  text: "No results found",
                                  size: 25,
                                  fontFamily: "Lato",
                                  color: DarkMode.isDarkMode
                                      ? Colors.white
                                      : Colors.black,
                                )
                              ],
                            );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column questionTabs(BuildContext context, int i, int q, String question) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'answerDetails',
                arguments: questionsList
                        .where((element) => element['q'] == question)
                        .toList()[0]["no"] -
                    1);
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.95,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.03,
                right: MediaQuery.of(context).size.width * 0.03),
            decoration: BoxDecoration(
              boxShadow: [
                if (!DarkMode.isDarkMode)
                  const BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(0, 1))
              ],
              color: DarkMode.isDarkMode ? Colors.black : Colors.white,
              borderRadius: DarkMode.isDarkMode
                  ? BorderRadius.circular(0)
                  : BorderRadius.circular(18),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.01,
                          right: MediaQuery.of(context).size.width * 0.01),
                      width: MediaQuery.of(context).size.width * 0.19,
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('$q',
                            style: TextStyle(
                                fontFamily: "Lato",
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.04,
                                color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.62,
                      child: Center(
                        child: Text(question,
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.022,
                              color: DarkMode.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                            )),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_circle_right_outlined,
                    color:
                        DarkMode.isDarkMode ? Colors.white : AppColor.primary),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
