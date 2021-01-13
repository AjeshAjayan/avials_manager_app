import 'package:flutter/material.dart';

class AvialsManagerTheme {
  static final bodyWidthFactor = 0.97;

  static Widget buildBodyHeader(BuildContext context, String text, Icon icon) {
    return Card(
      color: const Color(0xFFFFCCBC),
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(width: 10),
            Text(
              text,
              style: Theme.of(context).textTheme.headline1,
            )
          ],
        ),
      ),
    );
  }

  static final ThemeData theme = ThemeData(
    primaryColor: new Color(0xFFFF5722), // orange
    accentColor: new Color(0xFF009688), // teal
    textTheme: TextTheme(
      bodyText1: TextStyle(color: new Color(0xFF212121)),
      bodyText2: TextStyle(color: new Color(0xFF212121)),
      subtitle1: TextStyle(color: new Color(0xFFffffff)),
      headline1 : TextStyle(
        fontSize: 18,
        color: Color(0XFF1a1919),
        fontWeight: FontWeight.w500
      ),
    ),
    scaffoldBackgroundColor: new Color(0xFFFFFFFF),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: new Color(0xFFFFCCBC),
      selectedIconTheme: IconThemeData(
        color: new Color(0xFF009688),
      ),
      selectedItemColor: new Color(0xFF009688),
    ),
    cardColor: Color(0xFFebe9e4),
    cardTheme: CardTheme(
        shadowColor: Colors.black,
        elevation: 5
    ),
    dividerColor: Color(0xffBDBDBD),
    buttonColor: Color(0xFF009688), // teal
    buttonTheme: ButtonThemeData(
        splashColor:  Color(0xFF009688), // teal
        textTheme: ButtonTextTheme.primary
    ),
    iconTheme: IconThemeData(
      color: Color(0xFF009688), // teal
    ),
  );
}