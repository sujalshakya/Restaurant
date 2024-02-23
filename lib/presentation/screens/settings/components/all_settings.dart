import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'privacy.dart';
import 'rate_contact.dart';
import '../../../widget/ad_helper.dart';
import 'about_settings.dart';
import 'more_apps.dart';
import 'setting_list_tile.dart';
import 'social.dart';

class AllSettings extends StatelessWidget {
  const AllSettings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      color: Theme.of(context).cardColor,
      child: const Column(
        children: [
          RateContact(),
          Privacy(),
          AppAds(),
          Social(),
          AppAds(),
          AboutSettings(),
          AppAds(),
          MoreApps()
        ],
      ),
    );
  }
}

class GeneralSettings extends ConsumerWidget {
  const GeneralSettings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// Notifications
    return Container(
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'General Settings',
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          const SettingTile(
            label: 'Notification',
            icon: IconlyLight.notification,
            iconColor: Colors.green,
            //trailing: CupertinoSwitch(
            //  value: isNotificationOn,
            //   onChanged: (v) {
            //     notificationControlelr.toggleNotification(isNotificationOn);
            //   },
            //   activeColor: AppColor.,
            // ),
          ),
          SettingTile(
            label: 'Other Apps',
            icon: Icons.language_rounded,
            iconColor: Colors.purple,
            trailing: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(IconlyLight.arrowRight2),
            ),
            onTap: () async {
              // await UiUtil.openBottomSheet(
              //   context: context,
              //   widget: const ChangeLanguageDialog(),
              // );
            },
          ),
        ],
      ),
    );
  }
}
