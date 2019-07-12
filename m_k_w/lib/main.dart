import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'Views/auth.dart';
import 'Views/home.dart';

void main() {
  Firestore.instance.settings(timestampsInSnapshotsEnabled: true);
  SharedPreferences.getInstance().then((prefs) {
    runApp(ThisApp(prefs: prefs))
  });
}

class ThisApp extends StatelessWidget {
  final SharedPreferences prefs;

  ThisApp({this.prefs});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boda de Mel y Kato',
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      routes: <String, WidgetBuilder>{
        '/walktrought': (BuildContext context) => new WalkthroughScreen(),
        '/root': (BuildContext context) => new AuthPage(),
        '/signin': (BuildContext context) => new SignInScreen(),
        '/signup': (BuildContext context) => new SignUpScreen(),
        '/main': (BuildContext context) => new Home(),
      },
      home: AuthPage(),
    );
  }

  Widget _handleScreens() {
    bool seen = (prefs.getBool('seen') ?? false);
    if (seen) {
      return new AuthPage();
    } else {
      return new WalkthroughScreen(prefs: prefs);
    }
  }
}
