import 'package:campus_cloud/screens/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class FriendPage extends StatefulWidget {
  @override
  _FriendPageState createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> with TickerProviderStateMixin {
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
              new Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: new TinderSwapCard(
                    swipeUp: true,
                    swipeDown: true,
                    orientation: AmassOrientation.BOTTOM,
                    totalNum: people.length,
                    stackNum: 3,
                    swipeEdge: 2.0,
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                    maxHeight: MediaQuery.of(context).size.width * 0.7,
                    minWidth: MediaQuery.of(context).size.width * 0.6,
                    minHeight: MediaQuery.of(context).size.width * 0.6,
                    cardBuilder: (context, index) => Card(
                      child: Image.asset('${people[index]}'),
                    ),
                    cardController: controller = CardController(),
                    swipeUpdateCallback:
                        (DragUpdateDetails details, Alignment align) {
                      /// Get swiping card's alignment
                      if (align.x < 0) {
                        //Card is LEFT swiping
                      } else if (align.x > 0) {
                        //Card is RIGHT swiping
                      }
                    },
                    swipeCompleteCallback:
                        (CardSwipeOrientation orientation, int index) {
                      /// Get orientation & index of swiped card!
                    },
                  ),
                ),
              ),

              //you
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
                            child: Image.asset('assets/images/friends.jpg'),
                          ),
                        ))),
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
                icon: Icon(Icons.home),
                //onPressed: null,
                onPressed: () {
                  //mute
                }),
            //video
            IconButton(
                icon: Icon(Icons.message),
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
