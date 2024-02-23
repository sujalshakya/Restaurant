import 'package:url_launcher/url_launcher.dart' as launcher;

class AppUtil {
  static Future<void> launchUrl(String url) async {
    bool canLaunch = await launcher.canLaunchUrl(Uri.parse(url));
    if (canLaunch) {
      launcher.launchUrl(Uri.parse(url));
    } else {}
  }
}
