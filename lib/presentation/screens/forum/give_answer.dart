import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:iconsax/iconsax.dart';
import '../../constants/colors.dart';
import '../../../domain/entities/forum_post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GiveAnswer extends StatefulWidget {
  const GiveAnswer({Key? key}) : super(key: key);

  @override
  State<GiveAnswer> createState() => _GiveAnswerState();
}

var userInfoBox = Hive.box("userInfo");

class _GiveAnswerState extends State<GiveAnswer> {
  String token = userInfoBox.get("token");

  postComments(String postId, String text) async {
    Map<String, String> body = {"postId": postId, "text": text};
    var response = await http.put(
        Uri.parse('https://lms-softechtonic.herokuapp.com/api/posts/comment'),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token"
        },
        body: jsonEncode(body));
    if (response.statusCode == 200) {
      debugPrint("Comment Posted");
    } else {
      debugPrint("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    ForumPost posts = ModalRoute.of(context)!.settings.arguments as ForumPost;
    final textController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Give Answer"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.067,
                      child: ClipOval(
                        child: Image.asset("images/ask_us.png"),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Column(
                      children: [
                        Text(posts.postedBy),
                        const Text("5 hours ago")
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Iconsax.eye),
                    ),
                    const Text("250"),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Iconsax.bookmark))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.015),
                    child: Text(
                      posts.body,
                    ))
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
              child: const Text(
                "Answers",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: posts.comments.length,
                      itemBuilder: (context, index) {
                        return AnswerContainer(
                          index: index,
                          post: posts,
                        );
                      }),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: textController,
                      validator: (value) =>
                          value!.isEmpty ? "Enter a comment" : null,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20, top: 10),
                        hintText: "Write your answer here",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                      ),
                      style: const TextStyle(color: Colors.black),
                      maxLines: 3,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          var name = userInfoBox.get("name");
                          if (textController.text.isNotEmpty) {
                            postComments(posts.id, textController.text);
                            posts.comments.add({
                              'text': textController.text,
                              'postedBy': {'name': name}
                            });
                            FocusManager.instance.primaryFocus?.unfocus();
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.06,
                          margin: const EdgeInsets.all(5.0),
                          child: const Center(
                            child: Text("Give Answer",
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AnswerContainer extends StatelessWidget {
  final int index;
  final ForumPost post;
  const AnswerContainer({Key? key, required this.index, required this.post})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.065,
                child: ClipOval(
                  child: Image.asset("images/ask_us.png"),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.comments[index]["postedBy"]["name"],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "5 hours ago",
                    style: TextStyle(
                      fontFamily: "poppins",
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, top: 5),
            child: Text(post.comments[index]['text']),
          ),
        ],
      ),
    );
  }
}
