import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import '../../constants/colors.dart';

class ReadingDetails extends StatelessWidget {
  const ReadingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final itemDetails = ModalRoute.of(context)!.settings.arguments as String;
    Widget html = Html(
      data: itemDetails,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Study Details"),
        backgroundColor: AppColor.primary,
      ),
      body: SingleChildScrollView(child: Center(child: html)),
    );
  }
}
