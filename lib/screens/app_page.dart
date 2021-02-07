import 'package:flutter/material.dart';

// ******************* CONSTANTS *******************

final buttonWidth = 230.0;
final buttonHeight = 50.0;

// ******************* APP PAGE *******************

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(children: [
        Title(),
        FrontPageImage(),
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

class FrontPageImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 229,
      height: 279,
      margin: EdgeInsets.only(
        top: 30,
        bottom: 50,
      ),
      child: Image.asset('./assets/image-missing.png'),
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
        top: 10,
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
    Navigator.pushNamed(context, '/sign-up-general');
  }
}
