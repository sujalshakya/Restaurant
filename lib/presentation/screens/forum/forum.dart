import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../constants/api_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import '../../constants/colors.dart';
import '../../../domain/entities/forum_post.dart';
import '../../../data/network/connection_checker.dart';
import '../../widget/text_title.dart';

class Forum extends StatefulWidget {
  const Forum({Key? key}) : super(key: key);

  @override
  State<Forum> createState() => _ForumState();
}

var userInfoBox = Hive.box("userInfo");
final controller = TextEditingController();

class _ForumState extends State<Forum> {
  List<ForumPost> posts = [];
  bool loading = true;
  String userID = userInfoBox.get("id");
  String token = userInfoBox.get("token");

  postInteraction(String postId, String interaction) async {
    interaction = interaction.toLowerCase();
    Map<String, String> body = {"postId": postId};
    var response = await http.put(
        Uri.parse(interaction == "like"
            ? 'https://lms-softechtonic.herokuapp.com/api/posts/like'
            : 'https://lms-softechtonic.herokuapp.com/api/posts/unlike'),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token"
        },
        body: jsonEncode(body));
    if (response.statusCode == 200) {
      interaction == "like"
          ? debugPrint("Post liked")
          : debugPrint("Post unliked");
    } else {
      debugPrint("Error");
    }
  }

  getPosts() async {
    if (!await ConnectionChecker.checkUserConnection()) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('No Internet Connection'),
              content: const Text(
                  'Please check your internet connection and try again'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                )
              ],
            );
          });
      setState(() {
        loading = false;
      });
      return;
    }
    var response = await http.get(Uri.parse(ApiConst.forumPost),
        headers: {"Authorization": "Bearer $token"});

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);

      for (int i = 0; i < jsonResponse['data'][1]; i++) {
        posts.add(ForumPost(
            id: jsonResponse['data'][0][i]['_id'],
            title: jsonResponse['data'][0][i]['title'],
            body: jsonResponse['data'][0][i]['body'],
            photo: jsonResponse['data'][0][i]['photo'],
            likes: jsonResponse['data'][0][i]['likes'],
            comments: jsonResponse['data'][0][i]['comments'],
            postedBy: jsonResponse['data'][0][i]['postedBy']['name'],
            postedById: jsonResponse['data'][0][i]['postedBy']['_id']));
      }
      setState(() {
        loading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          title: const Text(
            "Questions",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(
              onPressed: () {
                var setting = Hive.box("settings");
                setting.put("loggedIn", false);
                userInfoBox.clear();
                Navigator.pushReplacementNamed(context, 'loginPage');
              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < posts.length; i++)
                      buildCard(
                          'https://static.remove.bg/remove-bg-web/37843dee2531e43723b012aa78be4b91cc211fef/assets/start_remove-c851bdf8d3127a24e2d137a55b1b427378cd17385b01aec6e59d5d4b5f39d2ec.png',
                          posts[i].postedBy,
                          "5 hours ago",
                          posts[i].title,
                          posts[i].likes.length.toString(),
                          posts[i].comments.length.toString(),
                          "50",
                          posts[i],
                          posts),
                  ],
                ),
              ),
        floatingActionButton: SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
          child: FloatingActionButton.extended(
            backgroundColor: Colors.green,
            onPressed: () async {
              final bool added =
                  await Navigator.pushNamed(context, 'askQuestion') as bool;
              if (added) {
                setState(() {
                  loading = true;
                  posts.clear();
                  getPosts();
                });
              }
            },
            icon: const Icon(Icons.message),
            label: const Text("Ask Question"),
          ),
        ));
  }

  Container buildCard(
      String img,
      String name,
      String time,
      String question,
      String likes,
      String comments,
      String views,
      ForumPost post,
      List<ForumPost> posts) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.03,
          top: MediaQuery.of(context).size.width * 0.03,
          right: MediaQuery.of(context).size.width * 0.03),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    //   radius: MediaQuery.of(context).size.width * 0.0,
                    child: Image.network(img),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        time,
                        style: const TextStyle(
                          fontFamily: "poppins",
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              PopupMenuButton(
                offset: Offset(
                  0,
                  MediaQuery.of(context).size.height * 0.05,
                ),
                onSelected: (value) async {
                  if (value == "Delete") {
                    setState(() {
                      posts.remove(post);
                    });
                    var response = await http.delete(
                        Uri.parse(
                            'https://lms-softechtonic.herokuapp.com/api/posts/delete/${post.id}'),
                        headers: {"Authorization": "Bearer $token"});
                    if (response.statusCode == 200) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.white,
                          content: TextTitle(
                            text: "Post Deleted",
                            color: Colors.green,
                          ),
                        ),
                      );
                    } else {
                      setState(() {
                        posts.add(post);
                      });
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.white,
                        content: TextTitle(
                          text: "Post Deleted",
                          color: Colors.red,
                        ),
                      ));
                    }
                  } else {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextField(
                                  controller: controller,
                                  decoration: InputDecoration(
                                    hintText: "Reason for reporting",
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(
                                        MediaQuery.of(context).size.width *
                                            0.03),
                                  ),
                                  maxLines: 5,
                                ),
                                ElevatedButton(
                                    onPressed: () async {
                                      var response = await http.put(
                                          Uri.parse(
                                              'https://lms-softechtonic.herokuapp.com/api/posts/report'),
                                          headers: {
                                            "Content-Type": "application/json",
                                            "Authorization": "Bearer $token"
                                          },
                                          body: jsonEncode({
                                            "postId": post.id,
                                            "text": controller.text
                                          }));
                                      Navigator.pop(context);
                                      if (response.statusCode == 200) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          backgroundColor: Colors.white,
                                          content: TextTitle(
                                            text: "Post Reported",
                                            color: Colors.green,
                                          ),
                                        ));
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          backgroundColor: Colors.white,
                                          content: TextTitle(
                                            text: "Failed to report.",
                                            color: Colors.red,
                                          ),
                                        ));
                                      }
                                    },
                                    child: const Text("Report"))
                              ],
                            ),
                          );
                        });
                  }
                },
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: userID == post.postedById
                        ? const Text("Delete")
                        : const Text('Report'),
                    value: 2,
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 2, top: 10),
            child: Text(
              question,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.height * 0.021),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          const Divider(thickness: 1, height: 1, color: AppColor.gray),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          Row(
            children: [
              CupertinoButton(
                minSize: double.minPositive,
                padding: const EdgeInsets.only(right: 3, left: 5),
                onPressed: () {
                  setState(() {
                    if (post.likes.contains(userID)) {
                      postInteraction(post.id, 'unlike');
                      post.likes.remove(userID);
                    } else {
                      postInteraction(post.id, 'like');
                      post.likes.add(userID);
                    }
                  });
                },
                child: post.likes.contains(userID)
                    ? const Icon(Icons.thumb_up_alt)
                    : const Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.grey,
                      ),
              ),
              Text(
                likes + " likes",
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.05),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, 'giveAnswer', arguments: post),
                child: Row(
                  children: [
                    CupertinoButton(
                        minSize: double.minPositive,
                        padding: const EdgeInsets.only(right: 3, left: 5),
                        onPressed: () => Navigator.pushNamed(
                            context, 'giveAnswer',
                            arguments: post),
                        child: const Icon(
                          Icons.question_answer_outlined,
                          color: Colors.grey,
                        )),
                    Text(comments + " answers"),
                  ],
                ),
              ),

              SizedBox(width: MediaQuery.of(context).size.width * 0.16),
              CupertinoButton(
                  minSize: double.minPositive,
                  padding: const EdgeInsets.only(right: 3, left: 5),
                  onPressed: () {},
                  child: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.grey,
                  )),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.009,
              ),
              Text(views),
              const Text(" Views"),
              SizedBox(width: MediaQuery.of(context).size.width * 0.009),
              // ElevatedButton(
              //   onPressed: () {},
              //   style: ButtonStyle(
              //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              //       RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(
              //             MediaQuery.of(context).size.width * 0.02),
              //       ),
              //     ),
              //     backgroundColor:
              //         MaterialStateProperty.all(AppColor.submitColor),
              //     // ElevatedButton.styleFrom(
              //     //     primary: AppColor.submit_color,
              //     //     padding: EdgeInsets.all(15)
              //     //
              //     // ),
              //   ),
              //   child: const Text("Give Answer"),
              // ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01)
        ],
      ),
    );
  }
}
