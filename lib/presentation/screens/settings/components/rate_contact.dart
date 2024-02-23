import 'package:flutter/material.dart';

class RateContact extends StatelessWidget {
  const RateContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.all(2),
        ),

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
