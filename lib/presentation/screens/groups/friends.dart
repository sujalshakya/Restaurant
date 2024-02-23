import 'package:flutter/material.dart';
import '../home_screen/homescreen.dart';
import '../../widget/dark_mode.dart';
import '../../widget/text_normal.dart';

class FriendsSection extends StatefulWidget {
  const FriendsSection({Key? key}) : super(key: key);

  @override
  State<FriendsSection> createState() => _FriendsSectionState();
}

class _FriendsSectionState extends State<FriendsSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: DarkMode.isDarkMode ? Colors.black : Colors.white,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: MediaQuery.of(context).size.height * 0.08,
          title: const Text("Friends",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: DarkMode.isDarkMode ? Colors.black : Colors.white,
                  image: const DecorationImage(
                    image: AssetImage('images/friends.png'),
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Column(
              children: [
                TextNormal(
                  text: "Your friend list is empty",
                  color: DarkMode.isDarkMode ? Colors.white : Colors.black,
                  fontFamily: "Lato",
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    child: const Text("Add Friends",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    style: TextButton.styleFrom(
                        fixedSize: const Size(160, 40),
                        backgroundColor: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
              ],
            )
          ],
        ));
  }
}
