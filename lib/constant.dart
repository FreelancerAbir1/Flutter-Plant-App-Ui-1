import 'package:flutter/material.dart';

const kPrimaryColor = Colors.green;
const kTextColor = Colors.grey;
const kTextLightColor = Colors.white;

const double kDefaultPadding = 21.0;

ThemeData customTheme() {
  return ThemeData(
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 35,
      ),
      subtitle1: TextStyle(
        color: Colors.grey,
      ),
      subtitle2: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
    ),
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.grey[300],
    appBarTheme: const AppBarTheme(
      color: kPrimaryColor,
      elevation: 0,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kPrimaryColor),
  );
}
