import 'package:flutter/material.dart';
import 'package:campus_cloud/common/backdrop.dart';

// ******************* CONSTANTS *******************

final buttonWidth = 150.0;
final buttonHeight = 50.0;

final textFieldWidth = 300.0;
final textFieldHeight = 40.0;

final textFormBackgroundColor = Colors.white;

// ******************* SIGN UP INFO *******************

class SignUpInfo extends StatefulWidget {
  @override
  _SignUpInfoState createState() => _SignUpInfoState();
}

class _SignUpInfoState extends State<SignUpInfo> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Column(children: [
          Backdrop(),
          FirstNameTextField(),
          LastNameTextField(),
          SchoolEmailTextField(),
          UsernameTextField(),
          PasswordTextField(),
          Container(
            margin: EdgeInsets.only(
              top: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BackButton(),
                SignUpButton(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

// ******************* FIRST NAME TEXT BOX *******************

class FirstNameTextField extends StatefulWidget {
  @override
  _FirstNameTextFieldState createState() => _FirstNameTextFieldState();
}

class _FirstNameTextFieldState extends State<FirstNameTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: textFieldWidth,
      height: textFieldHeight,
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "First Name",
          filled: true,
          fillColor: textFormBackgroundColor,
          contentPadding: EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: textFormBackgroundColor),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: textFormBackgroundColor),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}

// ******************* LAST NAME TEXT BOX *******************

class LastNameTextField extends StatefulWidget {
  @override
  _LastNameTextFieldState createState() => _LastNameTextFieldState();
}

class _LastNameTextFieldState extends State<LastNameTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: textFieldWidth,
      height: textFieldHeight,
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Last Name",
          filled: true,
          fillColor: textFormBackgroundColor,
          contentPadding: EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: textFormBackgroundColor),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: textFormBackgroundColor),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}

// ******************* SCHOOL EMAIL TEXT BOX *******************

class SchoolEmailTextField extends StatefulWidget {
  @override
  _SchoolEmailTextFieldState createState() => _SchoolEmailTextFieldState();
}

class _SchoolEmailTextFieldState extends State<SchoolEmailTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: textFieldWidth,
      height: textFieldHeight,
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "School Email",
          filled: true,
          fillColor: textFormBackgroundColor,
          contentPadding: EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: textFormBackgroundColor),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: textFormBackgroundColor),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}

// ******************* SCHOOL EMAIL TEXT BOX *******************

class UsernameTextField extends StatefulWidget {
  @override
  _UsernameTextFieldState createState() => _UsernameTextFieldState();
}

class _UsernameTextFieldState extends State<UsernameTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: textFieldWidth,
      height: textFieldHeight,
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Username",
          filled: true,
          fillColor: textFormBackgroundColor,
          contentPadding: EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: textFormBackgroundColor),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: textFormBackgroundColor),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}

// ******************* SCHOOL EMAIL TEXT BOX *******************

class PasswordTextField extends StatefulWidget {
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: textFieldWidth,
      height: textFieldHeight,
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          filled: true,
          fillColor: textFormBackgroundColor,
          contentPadding: EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: textFormBackgroundColor),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: textFormBackgroundColor),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}

// ******************* BACK BUTTON *******************

class BackButton extends StatefulWidget {
  @override
  _BackButtonState createState() => _BackButtonState();
}

class _BackButtonState extends State<BackButton> {
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
          'Back',
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
