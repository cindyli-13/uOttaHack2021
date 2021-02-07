import 'package:campus_cloud/screens/homepage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(children: [ProfilePic(), UserInfo()]),
    );
  }
}

class ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0, bottom: 30),
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            //image: AssetImage('asset/images/music.jpg')
                            //INSERT PROFILE PICTURE HERE
                            image: NetworkImage(
                                'https://cdn.discordapp.com/attachments/762531948308070410/807996958156259368/Elika_pic3.jpg')))),
              ),
            ),
            Text(
              "elika_123", //user's namename
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "eemad13@uwaterloo.ca", //user's name
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF4C4B4B), fontSize: 18),
              ),
            ),
          ]),
    );
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, bottom: 20, top: 70),
              child: Align(
                alignment: Alignment.centerLeft,
                
                child: Text(
                  "Elika Emadi", //user's name
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Color(0xFF4C4B4B), fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, bottom: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "elika_123", //user's name
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Color(0xFF4C4B4B), fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, bottom: 60),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hey!! My name is Elika and I'm in second year of Biomedical Engineering at the University of Waterloo", //user's name
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Color(0xFF4C4B4B), fontSize: 18),
                ),
              ),
            ),
            Container(
              width: 150.0,
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder( //CHANGE TO GET STARTED PAGE
                          pageBuilder: (_, __, ____) => HomePage()));
                },
                child: Text(
                  'Done',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
          ]),
    );
  }
}
