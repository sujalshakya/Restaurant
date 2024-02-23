import 'package:lua_app/presentation/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomStretchedTextButtonWidget extends StatelessWidget {
  final String buttonText;
  final void Function()? onTap;
  const CustomStretchedTextButtonWidget({
    Key? key,
    this.onTap,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
              onPressed: onTap,
              style: TextButton.styleFrom(
                  elevation: onTap == null ? 0 : 10,
                  shadowColor: AppColor.primary.withOpacity(0.25),
                  primary: Colors.white,
                  backgroundColor: onTap == null
                      ? AppColor.primary.withOpacity(0.15)
                      : AppColor.primary,
                  minimumSize: const Size(30, 62),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              child: Text(buttonText,
                  style: onTap == null
                      ? const TextStyle(color: Colors.white)
                      : null)),
        ),
      ],
    );
  }
}
