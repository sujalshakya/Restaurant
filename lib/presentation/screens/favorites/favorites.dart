import 'dart:ui';

import 'package:any_syntax_highlighter/any_syntax_highlighter.dart';
import 'package:any_syntax_highlighter/themes/any_syntax_highlighter_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lua_app/presentation/screens/favorites/favorites_cubit.dart';
import '../../constants/colors.dart';
import '../../../data/repositories/questions_answers.dart';
import '../../../data/providers/db_manager.dart';

import '../../widget/ad_helper.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        if (state is FavoritesLoading) {
          FavoritesCubit favoritesCubit =
              BlocProvider.of<FavoritesCubit>(context);
          favoritesCubit.fetchFavorites();

          return const Center(child: CircularProgressIndicator());
        } else if (state is FavoritesEmpty) {
          return const EmptyFavoritesWidget();
        } else if (state is FavoritesWithData) {
          return FavoritesWidget();
        } else if (state is QuestionsUpdated) {
          return FavoritesWidget();
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class FavoritesWidget extends StatelessWidget {
  final ScrollController controller = ScrollController();

  FavoritesWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[50],
          flexibleSpace: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Favourites",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "Lato",
                        fontSize: 26,
                      )),
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
                  )
                ],
              )),
        ),
        body: FutureBuilder<List<Favorites>>(
          future: DbManager().getFavoriteList(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                controller: controller,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01),
                    child: Column(
                      children: [
                        questionTabs(
                            context,
                            index + 1,
                            snapshot.data![index].no,
                            QuestionsAnswers.questionsList
                                .where((element) =>
                                    element['no'] == snapshot.data![index].no)
                                .toList()[0]['q']),
                        if (QuestionsAnswers.questionsList[index]["shown"])
                          answerTabs(
                              context,
                              QuestionsAnswers.questionsList
                                  .where((element) =>
                                      element['no'] == snapshot.data![index].no)
                                  .toList()[0]['a'],
                              snapshot.data![index].no),
                      ],
                    ),
                  );
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}

class EmptyFavoritesWidget extends StatelessWidget {
  const EmptyFavoritesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
        ),
        Image.asset(
          "images/fav_not_found.png",
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.6,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        const Center(
          child: Text(
            'No favourite yet',
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.008,
        ),
        const Text(
          "You have not marked any favourite",
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.35,
          margin: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.3,
            left: MediaQuery.of(context).size.width * 0.3,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColor.primary,
          ),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'programming0');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'programming0');
                  },
                  icon: const Icon(Iconsax.add),
                  color: Colors.white,
                ),
                const Text(
                  "Add Now",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const AppAds(),
      ],
    );
  }
}

Column questionTabs(BuildContext context, int i, int no, String question) {
  final ScrollController controller = ScrollController();
  return Column(
    children: [
      InkWell(
        onTap: () {
          if (i > 2) {
            controller.animateTo(
                QuestionsAnswers.questionsList[i - 1]["shown"]
                    ? controller.offset - 100
                    : controller.offset + 100,
                curve: Curves.easeInOut,
                duration: const Duration(milliseconds: 500));
          }
          context.read<FavoritesCubit>().toggleQuestionVisibility(i);
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.96,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColor.primary),
          ),
          child: Column(
            children: [
              Row(
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
                              fontFamily: "Lato",
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.04,
                              color: Colors.white)),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.7,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(question,
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: MediaQuery.of(context).size.height * 0.022,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[200],
                ),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text(
                            "Do you want to remove from your favorites collection?"),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text(
                                "Cancel",
                              )),
                          TextButton(
                              onPressed: () {
                                DbManager().deleteFavorite(no);

                                Navigator.pop(context);
                              },
                              child: const Text("Ok")),
                        ],
                      ),
                    );
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Iconsax.save_remove,
                                color: AppColor.primary,
                                size:
                                    MediaQuery.of(context).size.width * 0.05)),
                        Text(
                          "Remove from bookmarks",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03),
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
      const SizedBox(height: 20)
    ],
  );
}

Column answerTabs(BuildContext context, String answer, int i) {
  return Column(
    children: [
      InkWell(
        onTap: () {},
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.96,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.85,
                    ),
                    margin: const EdgeInsets.only(
                        top: 15, right: 20, left: 20, bottom: 15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
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
                    // Text(,
                    //     style: TextStyle(
                    //         fontSize: MediaQuery.of(context).size.height * 0.025,
                    //         color: DarkMode.isDarkMode
                    //             ? Colors.white
                    //             : Colors.black),
                    // ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'answerDetails',
                          arguments: i - 1);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      padding: const EdgeInsets.all(10),
                      // height: MediaQuery.of(context).size.height*0.09,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200]),
                      child: const Center(
                        child: Text('View Details',
                            style: TextStyle(
                                fontSize: 18, color: AppColor.primary)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 20)
    ],
  );
}
