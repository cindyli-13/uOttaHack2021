import 'package:flutter/material.dart';
import 'package:campus_cloud/screens/chill_page.dart';
import 'package:campus_cloud/screens/games_page.dart';
import 'package:campus_cloud/screens/music_page.dart';
import 'package:campus_cloud/screens/study_page.dart';
import 'package:campus_cloud/screens/workout_page.dart';
import 'package:campus_cloud/screens/setting_page.dart';
import 'package:campus_cloud/screens/friend_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // int _currentIndex = 0;

    // final tabs = [
    //   HomePage(),
    //   SettingPage(),
    //   StudyPage()
    // ];

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(children: <Widget>[
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: <Widget>[Header(), Grid(), BottomBar()]),
          ),
        )
      ]),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   type: BottomNavigationBarType.fixed,
      //   iconSize: 30,
      //   selectedFontSize: 15,
      //   unselectedFontSize: 15,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //       //backgroundColor: Colors.blue
      //     ),

      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message),
      //       label: "Message",
      //       //backgroundColor: Colors.blue
      //     ),

      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.map),
      //       label: "Map",
      //       //backgroundColor: Colors.blue
      //     ),

      //     // BottomNavigationBarItem(
      //     //   icon: Icon(Icons.settings),
      //     //   label: "Settings",
      //     //   //backgroundColor: Colors.blue
      //     // ),
      //   ],
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      // ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //need to change to FutureBuilder when auth works
    double screenWidth = MediaQuery.of(context).size.width;
    
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('asset/images/chill.png')
                        // image: NetworkImage(
                        //   snapshot.data.photoUrl)
                    ))),
                ),
              ]
            ),
            )
        ]
      ),
    );
  }
}

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          primary: false,
          children: <Widget>[
            //Friend Page
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => FriendPage()));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                elevation: 4,
                child: Image.asset(
                  'assets/images/friends.jpg',
                  fit: BoxFit.cover
                )
              ),
            ),
            //Study Page
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => StudyPage()));
              },
              child: Card(
                // shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(8)),
                elevation: 4,
                child: Image.asset(
                  'assets/images/study.jpg',
                  fit: BoxFit.cover
                )
              ),
            ),
            //Games Page
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => GamePage()));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 4,
                child: Image.asset(
                  'assets/images/games.jpg',
                  fit: BoxFit.cover
                )
              ),
            ),
            //Chill Page
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => ChillPage()));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 4,
                child: Image.asset(
                  'assets/images/chill.jpg',
                  fit: BoxFit.cover
                )
              ),
            ),
            //Workout Page
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => WorkoutPage()));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 4,
                child: Image.asset(
                  'assets/images/workout.jpg',
                  fit: BoxFit.cover
                )
              ),
            ),
            //Music Page
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => MusicPage()));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 4,
                child: Image.asset(
                  'assets/images/music.jpg',
                  fit: BoxFit.cover
                )
              ),
            ),
          ],
          crossAxisCount: 2),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child:ButtonBar (
        alignment: MainAxisAlignment.spaceEvenly,
        children: [
          //home
          IconButton(
            icon: Icon(Icons.home),
            iconSize: 30,
            onPressed: null,
            // onPressed:() {
            //   Navigator.push(context,
            //         new MaterialPageRoute(builder: (context) => HomePage()));
            // }
          ),
          //messages
          IconButton(
            icon: Icon(Icons.message),
            onPressed:() {
              Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => SettingPage()));
            }
          ),
          //map
          IconButton(
            icon: Icon(Icons.map),
            onPressed:() {
              Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => SettingPage()));
            }
          ),
        ],
      )
    );
  }
  
}
