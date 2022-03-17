import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData  theme(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        toolbarTextStyle:
        TextTheme(headline6: TextStyle(color: Color(0xFF8B8B8B),fontSize: 20))
            .bodyText2,
        titleTextStyle:
        TextTheme(headline6: TextStyle(color: Color(0xFF8B8B8B),fontSize: 20))
            .headline6),
    textTheme: TextTheme(
        bodyText1: TextStyle(color: cTextColor),
        bodyText2: TextStyle(color: cTextColor)),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(
        horizontal:42,
        vertical: 20
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: cTextColor),
        gapPadding: 18
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: cTextColor),
        gapPadding: 18
    ),
  );
}