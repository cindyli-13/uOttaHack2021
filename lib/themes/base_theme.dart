import 'package:flutter/material.dart';

// ******************* CONSTANTS *******************

final lightBlue = Color.fromRGBO(186, 235, 255, 1);
final darkBlue = Color.fromRGBO(57, 84, 159, 1);

// ******************* THEME DATA *******************

final baseTheme = ThemeData(
  primaryColor: lightBlue,
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 36.0,
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
