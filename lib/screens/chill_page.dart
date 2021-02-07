import 'package:flutter/material.dart';

class ChillPage extends StatefulWidget {
  @override
  _ChillPageState createState() => _ChillPageState();
}

class _ChillPageState extends State<ChillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(children: <Widget>[
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: <Widget>[Text("Chill Page")]),
          ),
        )
      ]),
    );
  }
}
