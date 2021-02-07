import 'package:flutter/material.dart';

// ******************* CONSTANTS *******************

final buttonWidth = 180.0;
final buttonHeight = 50.0;

// ******************* GLOBE PAGE *******************

class GlobePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(children: [
        Title(),
        Headline(),
        Globe(),
        AnywhereButton(),
        AcceptButton(),
      ]),
    );
  }
}

// ******************* TITLE *******************

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 70),
      child: Text('Welcome to the Globe!',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline3),
    );
  }
}

// ******************* HEADLINE *******************

class Headline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50),
      child: Text('Where are you travelling today?',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1),
    );
  }
}

// ******************* GLOBE *******************

class Globe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 300,
      margin: EdgeInsets.only(
        top: 30,
        bottom: 50,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Image.asset('assets/images/globe.png'),
    );
  }
}

// ******************* ANYWHERE BUTTON *******************

class AnywhereButton extends StatefulWidget {
  @override
  _AnywhereButtonState createState() => _AnywhereButtonState();
}

class _AnywhereButtonState extends State<AnywhereButton> {
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
          'Anywhere',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }

  void buttonPressedHandler() {
    Navigator.pushNamed(context, '/extra-filters');
  }
}

// ******************* ACCEPT BUTTON *******************

class AcceptButton extends StatefulWidget {
  @override
  _AcceptButtonState createState() => _AcceptButtonState();
}

class _AcceptButtonState extends State<AcceptButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(
        top: 3,
        bottom: 3,
      ),
      child: RaisedButton(
        onPressed: buttonPressedHandler,
        child: Text(
          'Accept',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }

  void buttonPressedHandler() {
    Navigator.pushNamed(context, '/extra-filters');
  }
}
