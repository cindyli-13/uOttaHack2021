import 'package:flutter/material.dart';

// ******************* CONSTANTS *******************

final lightBlue = Color.fromRGBO(184, 226, 236, 1);
final darkBlue = Color.fromRGBO(101, 179, 195, 1);

// ******************* THEME DATA *******************

final baseTheme = ThemeData(
  primaryColor: lightBlue,
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 36.0,
      fontFamily: 'Pacifico',
      color: darkBlue,
    ),
    headline2: TextStyle(
      fontSize: 24.0,
      fontFamily: 'Pacifico',
      color: darkBlue,
    ),
    button: TextStyle(
      fontSize: 20.0,
      fontFamily: 'Arial',
      color: Colors.white,
    ),
    bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Arial'),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: darkBlue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  ),
);
