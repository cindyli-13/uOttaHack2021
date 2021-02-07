import 'package:flutter/material.dart';
import 'package:campus_cloud/screens/friend_page.dart';
import 'package:campus_cloud/screens/games_page.dart';
import 'package:campus_cloud/screens/homepage.dart';
import 'package:campus_cloud/screens/music_page.dart';
import 'package:campus_cloud/screens/study_page.dart';
import 'package:campus_cloud/screens/workout_page.dart';
import 'package:campus_cloud/themes/base_theme.dart';
import 'package:campus_cloud/screens/app_page.dart';
import 'package:campus_cloud/screens/sign_up_general.dart';
import 'package:campus_cloud/screens/sign_up_info.dart';

// ******************* MAIN *******************
void main() => runApp(AppStart());

// ******************* APP START *******************

class AppStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CampusCloud',
      theme: baseTheme,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => AppPage(),
        '/sign-up-general': (context) => SignUpGeneral(),
        '/sign-up-info': (context) => SignUpInfo(),
        '/home': (context) => HomePage(),
        '/friend': (context) => FriendPage(),
        'chill': (context) => FriendPage(),
        'games': (context) => GamePage(),
        'music': (context) => MusicPage(),
        '/workout': (context) => WorkoutPage(),
        '/study': (context) => StudyPage(),
      },
    );
  }
}
