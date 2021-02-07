import 'package:campus_cloud/screens/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class FriendPage extends StatefulWidget {
  @override
  _FriendPageState createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> with TickerProviderStateMixin {
  int _currentIndex = 0;

  List<String> people = [
    "assets/images/games.jpg",
    "assets/images/music.jpg",
    "assets/images/chill.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.

    return new Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          //back button
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SafeArea(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        iconSize: 30,
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        tooltip: "Go back",
                        onPressed: () {
                          Navigator.pop(context);
                          //CHANGE ANIMATION
                        })),
              ),

              //other person
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.65,
                        height: MediaQuery.of(context).size.width * 0.65,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('${people[_currentIndex]}'),
                          ),
                        ))),
              ),
              Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: MediaQuery.of(context).size.width * 0.65,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/images/friends.jpg'),
                        ),
                      ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      child: RaisedButton(
                    child: Text("Share"),
                    onPressed: () {},
                  )),
                  Container(
                      child: RaisedButton(
                    child: Text("Next"),
                    onPressed: () {
                      setState(() {
                        if (_currentIndex != people.length - 1) {
                          _currentIndex += 1;
                        }
                      });
                    },
                  )),
                ],
              ),
              //bottom bar
              BottomBar()
            ],
          )
        ],
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: [
            //mic
            IconButton(
                icon: Icon(Icons.mic),
                //onPressed: null,
                onPressed: () {
                  //mute
                }),
            //video
            IconButton(
                icon: Icon(Icons.photo_camera),
                onPressed: () {
                  //turn off video
                }),
            //message
            IconButton(
                icon: Icon(Icons.message),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => SettingPage()));
                }),
          ],
        ));
  }
}
