import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter/painting.dart';

class AvialsManagerTheme {

  static final imageLoadingPlaceHolder = 'assets/images/loading.gif';

  static final bodyWidthFactor = 0.97;

  static final double cardHeightS = 70;

  static final double cardHeightXS = 50;

  static final secondaryBg = const Color(0xFFFFCCBC);

  static final splashRadius = BorderRadius.all(Radius.circular(100));

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

  static Widget buildBodyHeaderWithActions(
    BuildContext context,
    String text,
    Icon icon,
    List<Widget> actions,
    Function backButtonCallBack,
  ) {
    return Card(
      color: const Color(0xFFFFCCBC),
      child: Container(
        height: MediaQuery.of(context).size.height / 6,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        icon,
                        SizedBox(width: 10),
                        Text(
                          text,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    child: InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      splashColor: Theme.of(context).accentColor,
                      child: Icon(Icons.arrow_back),
                      onTap: backButtonCallBack,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: actions,
              ),
            )
          ],
        ),
      ),
    );
  }

  static AlertDialog buildOnDevelopmentAlert(BuildContext context) {
    return AlertDialog(
      title: Text('Oops'),
      content: Text(
        'On development',
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }

  static Widget buildBodyHeaderWithBackButton(
    BuildContext context,
    String text,
    Icon icon,
    Function backButtonCallBack,
  ) {
    return Card(
      color: const Color(0xFFFFCCBC),
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Row(
                children: [
                  icon,
                  SizedBox(width: 10),
                  Text(
                    text,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ),
            Container(
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                splashColor: Theme.of(context).accentColor,
                child: Icon(Icons.arrow_back),
                onTap: backButtonCallBack,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static final ThemeData theme = ThemeData(
    primaryColor: new Color(0xFFFF5722), // orange
    accentColor: new Color(0xFF009688), // teal
    splashColor: new Color(0xFF009688), // teal
    dialogTheme: DialogTheme(elevation: 10),
    dialogBackgroundColor: new Color(0xFFFFCCBC), // light Orange
    textTheme: TextTheme(
      bodyText1: TextStyle(color: new Color(0xFF212121)),
      bodyText2: TextStyle(color: new Color(0xFF212121)),
      subtitle1: TextStyle(color: new Color(0xFF000000)),
      subtitle2: TextStyle(color: new Color(0xFFFFFFFF)),
      headline1: TextStyle(
          fontSize: 18, color: Color(0XFF1a1919), fontWeight: FontWeight.w500),
    ),
    scaffoldBackgroundColor: new Color(0xFFFFFFFF),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: new Color(0xFFFFCCBC), // light Orange
      selectedIconTheme: IconThemeData(
        color: new Color(0xFF009688),
      ),
      selectedItemColor: new Color(0xFF009688),
    ),
    cardColor: Color(0xFFebe9e4),
    cardTheme: CardTheme(shadowColor: Colors.black, elevation: 5),
    dividerColor: Color(0xffBDBDBD),
    buttonColor: Color(0xFF009688), // teal
    buttonTheme: ButtonThemeData(
      splashColor: Color(0xFF009688), // teal
      textTheme: ButtonTextTheme.primary,
      buttonColor: Color(0xFF009688),
    ),
    iconTheme: IconThemeData(
      color: Color(0xFF009688), // teal
    ),
  );
}
