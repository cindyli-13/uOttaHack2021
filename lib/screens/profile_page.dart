import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(children: [ProfilePic()]),
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
                                'https://cdn.discordapp.com/attachments/762531948308070410/807996796550119454/Elika_Pic1.jpg')))),
              ),
            ),
            Text(
              "Elika Emadi", //user's name
              style: TextStyle(color: Color(0xFF4C4B4B), fontSize: 24),
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                "eemad13@uottawa.ca", //user's name
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
          ]),
    );
  }
}



