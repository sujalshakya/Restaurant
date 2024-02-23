import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UiUtil {
  /// OPENS BOTTOM SHEET WITH THE GIVEN WIDGET
  static Future openBottomSheet({
    required BuildContext context,
    required Widget widget,
  }) async {
    await showModalBottomSheet(
      context: context,
      builder: (ctx) => widget,
      isScrollControlled: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      ),
    );
  }

  static Future<void> setStatusBarDark() async {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light),
    );
  }

  /// Set status bar and Color to Dark
  static Future<void> setStatusBarLight() async {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark),
    );
  }

  /// Opens dialog with background blur enabled
  static Future openDialog({
    required BuildContext context,
    required Widget widget,
    bool isDismissable = true,
  }) async {
    return await showGeneralDialog(
      barrierLabel: 'Dialog',
      barrierDismissible: isDismissable,
      context: context,
      pageBuilder: (ctx, anim1, anim2) => widget,
      transitionBuilder: (ctx, anim1, anim2, child) => ScaleTransition(
        scale: anim1,
        child: child,
      ),
    );
  }
}
