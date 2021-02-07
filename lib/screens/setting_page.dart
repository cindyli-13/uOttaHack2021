import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
              child: Container(
          //back button
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            tooltip: "Go back",
            onPressed: () {
               Navigator.pop(context);
            })
          )
        ),
      )
    );   
  }   
}
