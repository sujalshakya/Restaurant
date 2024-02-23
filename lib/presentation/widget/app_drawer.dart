import 'package:flutter/material.dart';
import 'dark_mode.dart';
import 'package:share_plus/share_plus.dart';

// ignore: camel_case_types
class appDrawer extends StatelessWidget {
  static bool inHomeScreen = true;

  const appDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: DarkMode.isDarkMode ? Colors.black : Colors.white,
      child: ListView(
        children: [
          Column(
            children: [
              const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/picture.jpeg')),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text("Welcome",
                  style: TextStyle(
                      fontSize: 15,
                      color:
                          DarkMode.isDarkMode ? Colors.white : Colors.black)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(
                "Bishal Khadka",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: DarkMode.isDarkMode ? Colors.white : Colors.black),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor:
                          DarkMode.isDarkMode ? Colors.black : Colors.white,
                      fixedSize: const Size(130, 1),
                      backgroundColor:
                          DarkMode.isDarkMode ? Colors.white : Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {},
                  child: const Text("Edit Profile")),
            ],
          ),
          Divider(
            thickness: 2,
            color: DarkMode.isDarkMode ? Colors.white : Colors.blue,
            endIndent: 10,
            indent: 10,
          ),
          ListTile(
            title: Text('Home',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: DarkMode.isDarkMode ? Colors.white : Colors.black)),
            leading: Icon(Icons.home,
                size: 30,
                color: DarkMode.isDarkMode ? Colors.white : Colors.black),
            onTap: () {
              if (!inHomeScreen) {
                inHomeScreen = true;
                Navigator.of(context).pushNamedAndRemoveUntil(
                    'homePage', (Route<dynamic> route) => false);
              } else {
                Navigator.pop(context);
              }
            },
          ),
          ListTile(
            title: Text('About Us',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: DarkMode.isDarkMode ? Colors.white : Colors.black)),
            leading: Icon(Icons.info,
                size: 30,
                color: DarkMode.isDarkMode ? Colors.white : Colors.black),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'aboutScreen');
            },
          ),
          ListTile(
            title: Text('Rate Application',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: DarkMode.isDarkMode ? Colors.white : Colors.black)),
            leading: Icon(Icons.star,
                size: 30,
                color: DarkMode.isDarkMode ? Colors.white : Colors.black),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('More Application',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight:
                        DarkMode.isDarkMode ? FontWeight.bold : FontWeight.bold,
                    color: DarkMode.isDarkMode ? Colors.white : Colors.black)),
            leading: Icon(Icons.app_registration,
                size: 30,
                color: DarkMode.isDarkMode ? Colors.white : Colors.black),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Share Application',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: DarkMode.isDarkMode ? Colors.white : Colors.black)),
            leading: Icon(Icons.share,
                size: 30,
                color: DarkMode.isDarkMode ? Colors.white : Colors.black),
            onTap: () {
              Navigator.pop(context);
              // Navigator.pushNamed(context, '');
              Share.share('Please check out my website',
                  subject: 'Download this app!');
            },
          ),
        ],
      ),
    );
  }
}
