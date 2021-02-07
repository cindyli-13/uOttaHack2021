import 'package:flutter/material.dart';

class StudyPage extends StatefulWidget {
  @override
  _StudyPageState createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(children: <Widget>[
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: <Widget>[Text("Study Page")]),
          ),
        )
      ]),
    );
  }
}
