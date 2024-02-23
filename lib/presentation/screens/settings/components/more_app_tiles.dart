import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class MoreAppsTile extends StatelessWidget {
  const MoreAppsTile({
    Key? key,
    required this.appname,
    required this.appicon,
    this.onTap,
  }) : super(key: key);
  final String appname;
  final String appicon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Card(
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.28,
            height: MediaQuery.of(context).size.height * 0.16,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.018,
                ),
                Image.network(
                  appicon,
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                const Divider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 1,
                    color: AppColor.primary),
                Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text(
                      appname,
                      style: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
