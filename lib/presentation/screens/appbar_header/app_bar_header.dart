import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class AppBArHeader extends StatelessWidget {
  const AppBArHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
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
      ),
    );
  }
}
