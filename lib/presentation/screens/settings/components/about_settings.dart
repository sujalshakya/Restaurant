import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:store_redirect/store_redirect.dart';
import 'package:url_launcher/url_launcher.dart';
import 'setting_list_tile.dart';

class AboutSettings extends StatelessWidget {
  const AboutSettings({
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
            'About',
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        SettingTile(
          label: 'About Us',
          icon: IconlyLight.paper,
          iconColor: Colors.blueAccent,
          trailing: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(IconlyLight.arrowRight2),
          ),
          onTap: () {
            Navigator.pushNamed(context, 'aboutScreen');
          },
        ),
        SettingTile(
          label: 'Contact Us',
          icon: Icons.contact_mail_rounded,
          iconColor: Colors.blueGrey,
          trailing: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(IconlyLight.arrowRight2),
          ),
          onTap: () {
            final Uri _url = Uri.parse('mailto:bishalkhadka75919@gmail.com');
            launchUrl(_url);
          },
        ),
        SettingTile(
          label: 'Rate Us',
          icon: IconlyLight.star,
          iconColor: Colors.green,
          trailing: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(IconlyLight.arrowRight2),
          ),
          onTap: () async {
            StoreRedirect.redirect(
                androidAppId: "com.allbachelor.erlangprogramsapp",
                iOSAppId: "585027354");
          },
        ),
      ],
    );
  }
}
