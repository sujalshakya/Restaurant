import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'setting_list_tile.dart';

class Social extends StatelessWidget {
  const Social({
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
            'Social',
            style: Theme.of(context).textTheme.caption,
          ),
        ),

        SettingTile(
          label: 'Facebook',
          icon: FontAwesomeIcons.facebook,
          shouldTranslate: false,
          isFaIcon: true,
          iconColor: Colors.blue,
          trailing: const Padding(
            padding: EdgeInsets.all(8.0),
            //child: Icon(IconlyLight.arrowRight2),
          ),
          onTap: () {
            final Uri _url =
                Uri.parse('https://www.facebook.com/dingavingaofficial');
            launchUrl(_url);
          },
        ),
        SettingTile(
          label: 'Youtube',
          shouldTranslate: false,
          icon: FontAwesomeIcons.youtube,
          isFaIcon: true,
          iconColor: Colors.red,
          trailing: const Padding(
            padding: EdgeInsets.all(8.0),
            // child: Icon(IconlyLight.arrowRight2),
          ),
          onTap: () {
            final Uri _url = Uri.parse('https://www.youtube.com/c/dingavinga');
            launchUrl(_url);
          },
        ),
        SettingTile(
          label: 'Website',
          shouldTranslate: false,
          icon: FontAwesomeIcons.earthAsia,
          isFaIcon: true,
          iconColor: Colors.green,
          // trailing: const Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Icon(IconlyLight.arrowRight2),
          // ),
          onTap: () {
            final Uri _url = Uri.parse('https://www.allbachelor.com');
            launchUrl(_url);
          },
        ),
        //   ),
      ],
    );
  }
}
