import 'package:flutter/material.dart';

class WorkoutPage extends StatefulWidget {
  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(children: <Widget>[
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: <Widget>[Text("Workout Page")]),
          ),
        )
      ]),
    );
  }
}
