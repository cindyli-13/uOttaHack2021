import 'package:flutter/material.dart';
import 'package:campus_cloud/common/backdrop.dart';

final buttonWidth = 230.0;
final buttonHeight = 50.0;

class Signin extends StatefulWidget {
  @override
  SigninState createState() => SigninState();
}

class SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Backdrop(),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.transparent,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey[100],
                            ),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey[100],
                            ),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.pink[200],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Container(
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
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.pink[200],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void buttonPressedHandler() {
    Navigator.pushNamed(context, '/home');
  }
}
