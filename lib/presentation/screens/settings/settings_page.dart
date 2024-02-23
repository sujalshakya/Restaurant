import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import 'components/all_settings.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[50],
          flexibleSpace: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Settings",
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
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AllSettings(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
