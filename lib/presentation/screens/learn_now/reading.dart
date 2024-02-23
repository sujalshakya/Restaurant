import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lua_app/presentation/screens/learn_now/reading_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../widget/ad_helper.dart';
import '../../constants/colors.dart';
import '../../../data/repositories/contents.dart';
import '../../../domain/entities/study_list.dart';
import 'learn_details.dart';

class Reading extends StatelessWidget {
  late SharedPreferences prefs;

  Future<SharedPreferences> _loadPrefs() async {
    return await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: _loadPrefs(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasError) {
          return const Scaffold(
            body: Center(
              child: Text('Error loading SharedPreferences'),
            ),
          );
        } else {
          prefs = snapshot.data!;
          return BlocBuilder<ReadingCubit, ReadingState>(
            builder: (context, state) {
              if (state is ReadingLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is ReadingLoaded) {
                return _buildContent(context);
              } else {
                return const Text("error");
              }
            },
          );
        }
      },
    );
  }

  Widget _buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text(
            "Study",
            style: TextStyle(
              fontFamily: "Lato",
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, 'homePage', (route) => false);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          elevation: 0,
          backgroundColor: AppColor.primary),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.29,
                width: MediaQuery.of(context).size.width,
                color: AppColor.primary,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        'images/logo/logo_white.png',
                        height: MediaQuery.of(context).size.height * 0.13,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.026,
                    ),
                    const Text(
                      "Learn LUA",
                      style: TextStyle(
                          color: Color(0xffF9F8FF),
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Become A Pro",
                      style: TextStyle(
                        color: Color(0xffF9F8FF),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.05,
                      top: MediaQuery.of(context).size.height * 0.02,
                    ),
                    child: const Text(
                      "12 Lessons",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0, color: Colors.white),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Expanded(
              child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: studyList.length,
                    itemBuilder: (context, index) =>
                        buildItem(context, studyList[index], prefs),
                  ))),
        ],
      ),
      bottomNavigationBar: const BottomAppBar(child: AppAds()),
    );
  }

  Widget buildItem(
      BuildContext context, StudyList item, SharedPreferences prefs,
      {double leftPadding = 0}) {
    List<int> getIndex(String title) {
      for (int i = 0; i < Contents.contentsList[0]['items'].length; i++) {
        for (int j = 0;
            j < Contents.contentsList[0]['items'][i]['content'].length;
            j++) {
          if (Contents.contentsList[0]['items'][i]['content'][j]['tag_line'] ==
              title) {
            return [i, j];
          }
        }
      }

      return [0, 0];
    }

    String getPrevTitle(String title) {
      int index = getIndex(title)[0];
      for (int i = 0;
          i < Contents.contentsList[0]['items'][index]['content'].length;
          i++) {
        try {
          if (Contents.contentsList[0]['items'][index]['content'][i]
                  ['tag_line'] ==
              title) {
            return Contents.contentsList[0]['items'][index]['content'][i - 1]
                ['tag_line'];
          }
        } on RangeError {
          return 'first';
        }
      }
      return '';
    }

    String finalTitle(int index) {
      return Contents.contentsList[0]['items'][index]['content']
              [Contents.contentsList[0]['items'][0]["chapter_length"] - 1]
          ['tag_line'];
    }

    final completed = prefs.getBool(item.title) ?? false;
    if (item.items.isEmpty) {
      return Container(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
        child: ListTile(
            dense: true,
            contentPadding: const EdgeInsets.all(0),
            title: Text(
              item.title,
              style: const TextStyle(
                fontSize: 13,
                fontFamily: "Lato",
              ),
            ),
            onTap: () async {
              if (getPrevTitle(item.title) == 'first') {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LearnPage(
                    item: item,
                    index: getIndex(item.title),
                  );
                }));
              }

              final isPrevCompleted =
                  prefs.getBool(getPrevTitle(item.title)) ?? false;

              if (!isPrevCompleted && getPrevTitle(item.title) != 'first') {
                await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Previous Lesson Not Completed'),
                    content: const Text(
                        'Please complete the previous lesson to continue.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              } else if (getPrevTitle(item.title) != 'first') {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LearnPage(
                    item: item,
                    index: getIndex(item.title),
                  );
                }));
              }
            },
            trailing: completed
                ? const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  )
                : const Icon(
                    Icons.check_circle,
                    color: Colors.grey,
                  )),
      );
    } else {
      bool isFinalCompleted =
          prefs.getBool(finalTitle(getIndex(item.title)[1])) ?? false;
      return Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.015),
          trailing: isFinalCompleted &&
                  (prefs.getBool(item.items.last.title) ?? false)
              ? const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                )
              : const Icon(Icons.lock_outline),
          title: Text(
            item.title,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: "Lato",
              fontWeight: FontWeight.w500,
            ),
          ),
          children: item.items
              .map((item) =>
                  buildItem(context, item, prefs, leftPadding: 0 + leftPadding))
              .toList(),
        ),
      );
    }
  }
}
