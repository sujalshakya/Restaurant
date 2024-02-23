import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import '../../constants/colors.dart';
import '../../../data/repositories/retrieve_post.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List posts = [];
  bool activeConnection = false;
  bool isLoading = true;
  String T = "";
  Future checkUserConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      print(result);
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          activeConnection = true;
          T = "Turn off the data and repress again";
        });
      }
    } on SocketException catch (_) {
      setState(() {
        activeConnection = false;
        T = "Turn On the data and repress again";
      });
    }
  }

  @override
  void initState() {
    checkUserConnection();
    super.initState();
    fetchWpPosts();
  }

  fetchWpPosts() async {
    posts = await fetchPosts();
    if (mounted) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // return isLoading ? const CircularProgressIndicator() : const Text("Loaded");
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            flexibleSpace: Container(
              color: Colors.grey[50],
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Blog",
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
          ),
          body: activeConnection
              ? isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.04,
                          right: MediaQuery.of(context).size.width * 0.04),
                      child: ListView.builder(
                          itemCount: posts.length,
                          itemBuilder: ((context, index) {
                            String imageUrl = '';
                            try {
                              imageUrl = posts[index]['yoast_head_json']
                                  ['og_image'][0]['url'];
                            } catch (e) {
                              imageUrl =
                                  'https://jointedrail.com/wp-content/uploads/2020/11/noimage-banner1.png';
                            }
                            return Card(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              elevation: 2,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, 'blogpost',
                                      arguments: index);
                                },
                                child: Row(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image.network(
                                        imageUrl,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.1,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.2,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 20.0),
                                          Text(
                                            posts[index]['title']['rendered'],
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.02,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Lato"),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(IconlyLight.timeCircle,
                                                  size: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.02,
                                                  color: Colors.grey),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                posts[index]['yoast_head_json']
                                                        ['twitter_misc']
                                                    ['Est. reading time'],
                                                style: const TextStyle(
                                                    fontFamily: "Lato",
                                                    color: Colors.grey),
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              Icon(IconlyLight.calendar,
                                                  size: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.02,
                                                  color: Colors.grey),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 12.0),
                                                child: Text(
                                                  DateFormat.yMMMMd().format(
                                                      DateTime.parse(
                                                          posts[index]
                                                              ['date'])),
                                                  style: const TextStyle(
                                                      fontFamily: "Lato",
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10.0),
                                          Text(
                                            posts[index]['excerpt']['rendered'],
                                            maxLines: 2,
                                            style: TextStyle(
                                                fontFamily: "Lato",
                                                color: Colors.grey[500],
                                                fontSize: 14),
                                          ),
                                          const SizedBox(height: 20.0),

                                          // Text(
                                          //   posts[index]['yoast_head_json']['author'],
                                          //   style: TextStyle(fontWeight: FontWeight.w400),
                                          // ),
                                          // SizedBox(height: 10.0),
                                          // Text((posts[index]['date']).substring(0,10)),
                                        ],
                                      ),
                                    ),
                                    //Html(data: posts[index]['content']['rendered'])
                                  ],
                                ),
                              ),
                            );
                          })),
                    )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    Image.asset(
                      "images/no_internet.gif",
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.6,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const Center(
                      child: Text('Oops! No internet connection',
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    const Text("Please connect to Internet and try again",
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 13,
                            color: Colors.grey)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.3,
                          left: MediaQuery.of(context).size.width * 0.3),
                      // height: MediaQuery.of(context).size.height*0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColor.primary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {});
                            },
                            icon: const Icon(Iconsax.wifi),
                            color: Colors.white,
                          ),
                          const Text(
                            "Refresh",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                  // Image.asset("images/no_internet.gif", height: MediaQuery.of(context).size.height*0.02, width: MediaQuery.of(context).size.width*0.2,),
                  // const Text("Oops no internet connection!!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Lato"),),
                  //   SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  //   const Text(" Please connect to internet and try again",
                  //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.grey, fontFamily: "Lato")
                  //   ),
                  // SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                  // ElevatedButton(onPressed: (){
                  //
                  // }, child: Text("Connect")),
                )),
    );
  }
}
