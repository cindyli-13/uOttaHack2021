import 'package:flutter/material.dart';
import 'package:campus_cloud/themes/base_theme.dart';
import 'package:campus_cloud/screens/app_page.dart';

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
      },
    );
  }
}
