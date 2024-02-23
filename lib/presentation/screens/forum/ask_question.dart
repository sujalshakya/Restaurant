import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../constants/colors.dart';

class AskQuestion extends StatefulWidget {
  const AskQuestion({Key? key}) : super(key: key);

  @override
  State<AskQuestion> createState() => _AskQuestionState();
}

var userInfoBox = Hive.box("userInfo");

class _AskQuestionState extends State<AskQuestion> {
  String token = userInfoBox.get("token");

  postQuestion(String title, String bodyText, String tag) async {
    Map<String, String> body = {"title": title, "body": bodyText, "pic": tag};
    var response = await http.post(
        Uri.parse('https://lms-softechtonic.herokuapp.com/api/posts'),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token"
        },
        body: jsonEncode(body));
    if (response.statusCode == 200) {
      debugPrint("Question posted");
    } else {
      debugPrint("Error");
    }
  }

  final titleTextController = TextEditingController();
  final bodyTextController = TextEditingController();
  final tagTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8EDF1),
      appBar: AppBar(
        title: const Text("Ask Question"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.06,
                    top: MediaQuery.of(context).size.height * 0.012),
                child: const Text(
                  "Title",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
              child: TextField(
                controller: titleTextController,
                maxLines: 1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    hintText: "Write your title here"),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.06,
                    top: MediaQuery.of(context).size.height * 0.012),
                child: const Text(
                  "Your Question",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
              child: TextField(
                controller: bodyTextController,
                maxLines: 10,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    // labelText: "Write your question here",
                    hintText: "Write your question here"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.06,
                  top: MediaQuery.of(context).size.height * 0.01),
              child: const Text(
                "Question Tag",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
              child: TextField(
                controller: tagTextController,
                maxLines: 1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    // labelText: "Write your question here",
                    hintText: "Write keywords that describe your problem"),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.5,
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.primary,
              ),
              child: InkWell(
                  onTap: () {
                    if (titleTextController.text.isNotEmpty &&
                        bodyTextController.text.isNotEmpty &&
                        tagTextController.text.isNotEmpty) {
                      postQuestion(titleTextController.text,
                          bodyTextController.text, tagTextController.text);
                      Navigator.pop(context, true);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text(
                            "Error: Please fill all fields",
                            textScaleFactor: 1.2,
                            style: TextStyle(color: Colors.white),
                          )));
                    }
                  },
                  child: const Center(
                      child: Text(
                    "SUBMIT",
                    style: TextStyle(color: Colors.white),
                  ))),
            )
          ],
        ),
      ),
    );
  }
}
