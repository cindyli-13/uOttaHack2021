import 'package:flutter/material.dart';

// ******************* BACKDROP *******************

class Backdrop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 50,
      ),
      color: Theme.of(context).primaryColor,
      child: Stack(children: [
        Logo(),
        Title(),
        Line(),
      ]),
    );
  }
}

// ******************* LOGO *******************

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 182,
      height: 166,
      margin: EdgeInsets.only(
        top: 26,
        left: 22.43,
      ),
      child: Image.asset('assets/images/logo.jpg'),
    );
  }
}

// ******************* TITLE *******************

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 222,
      height: 75,
      margin: EdgeInsets.only(
        top: 60,
        left: 199,
      ),
      child: Text(
        'CampusCloud',
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}

// ******************* LINE *******************

class Line extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 425.97,
      height: 161.23,
      margin: EdgeInsets.only(top: 111.42),
      child: Image.asset('assets/images/image-missing.png'),
    );
  }
}
