import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:url_launcher/url_launcher.dart';
import 'setting_list_tile.dart';

class Privacy extends StatelessWidget {
  const Privacy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Privacy',
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        SettingTile(
          label: 'Privacy Policy',
          icon: IconlyLight.lock,
          iconColor: Colors.pink,
          trailing: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(IconlyLight.arrowRight2),
          ),
          onTap: () {
            final Uri _url =
                Uri.parse('https://www.allbachelor.com/privacy-policy');
            launchUrl(_url);
            //AppUtil.launchUrl("https://www.allbachelor.com/privacy-policy");
          },
        ),

        // if (WPConfig.facebookUrl.isNotEmpty)
        //   SettingTile(
        //     label: 'Facebook',
        //     icon: FontAwesomeIcons.facebook,
        //     shouldTranslate: false,
        //     isFaIcon: true,
        //     iconColor: Colors.blue,
        //     trailing: const Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Icon(IconlyLight.arrowRight2),
        //     ),
        //     onTap: () {
        //       const url = WPConfig.facebookUrl;
        //       if (url.isNotEmpty) {
        //         AppUtil.openLink(url);
        //       } else {
        //         Fluttertoast.showToast(msg: 'No Facebook link provided');
        //       }
        //     },
        //   ),
        // if (WPConfig.youtubeUrl.isNotEmpty)
        //   SettingTile(
        //     label: 'Youtube',
        //     shouldTranslate: false,
        //     icon: FontAwesomeIcons.youtube,
        //     isFaIcon: true,
        //     iconColor: Colors.red,
        //     trailing: const Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Icon(IconlyLight.arrowRight2),
        //     ),
        //     onTap: () {
        //       const url = WPConfig.youtubeUrl;
        //       if (url.isNotEmpty) {
        //         AppUtil.openLink(url);
        //       } else {
        //         Fluttertoast.showToast(msg: 'No Youtube link provided');
        //       }
        //     },
        //   ),
        // if (WPConfig.twitterUrl.isNotEmpty)
        //   SettingTile(
        //     label: 'Twitter',
        //     shouldTranslate: false,
        //     icon: FontAwesomeIcons.twitter,
        //     isFaIcon: true,
        //     iconColor: Colors.lightBlue,
        //     trailing: const Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Icon(IconlyLight.arrowRight2),
        //     ),
        //     onTap: () {
        //       const url = WPConfig.twitterUrl;
        //       if (url.isNotEmpty) {
        //         AppUtil.openLink(url);
        //       } else {
        //         Fluttertoast.showToast(msg: 'No Twitter link provided');
        //       }
        //     },
        //   ),
      ],
    );
  }
}
