import 'package:avilas_manager_app/avials-manager-theme.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';

class Toster {
  static void showToster({
    BuildContext context,
    msg,
  }) {
    Flushbar(
      maxWidth: MediaQuery.of(context).size.width - 30,
      flushbarPosition: FlushbarPosition.TOP,
      duration: Duration(seconds: 5),
      borderColor: AvialsManagerTheme.theme.accentColor,
      backgroundColor: AvialsManagerTheme.secondaryBg,
      messageText: Text(
        msg,
        style: TextStyle(
          color: AvialsManagerTheme.theme.accentColor,
          fontSize: 17,
        ),
      ),
      borderRadius: 50,
      boxShadows: [
        BoxShadow(
            color: AvialsManagerTheme.theme.primaryColor,
            blurRadius: 2,
            spreadRadius: 4)
      ],
    )..show(context);
  }
}
