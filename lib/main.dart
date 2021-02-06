import 'package:flutter/material.dart';

// ******************* MAIN *******************
void main() => runApp(AppStart());

// ******************* CONSTANTS *******************

final buttonWidth = 230.0;
final buttonHeight = 50.0;

final lightBlue = Color.fromRGBO(186, 235, 255, 1);
final darkBlue = Color.fromRGBO(57, 84, 159, 1);

// ******************* APP START *******************

class AppStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CampusCloud',
      theme: ThemeData(
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
      ),
      home: AppPage(),
    );
  }
}

// ******************* APP PAGE *******************

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(children: [
        Title(),
        Image(),
        LoginButton(),
        SignUpButton(),
      ]),
    );
  }
}

// ******************* TITLE *******************

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100),
      child: Text('Welcome to CampusCloud',
          textAlign: TextAlign.center,
          overflow: TextOverflow.clip,
          style: Theme.of(context).textTheme.headline1),
    );
  }
}

// ******************* IMAGE *******************

class Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 150,
        bottom: 150,
      ),
      child: Text('Insert image here',
          style: Theme.of(context).textTheme.bodyText1),
    );
  }
}

// ******************* LOGIN BUTTON *******************

class LoginButton extends StatefulWidget {
  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      padding: EdgeInsets.only(
        top: 3,
        bottom: 3,
      ),
      child: RaisedButton(
        onPressed: buttonPressedHandler,
        child: Text(
          'Login',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }

  void buttonPressedHandler() {
    return;
  }
}

// ******************* SIGN UP BUTTON *******************

class SignUpButton extends StatefulWidget {
  @override
  _SignUpButtonState createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      margin: EdgeInsets.only(
        top: 5,
      ),
      padding: EdgeInsets.only(
        top: 3,
        bottom: 3,
      ),
      child: RaisedButton(
        onPressed: buttonPressedHandler,
        child: Text(
          'Sign Up',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }

  void buttonPressedHandler() {
    return;
  }
}
