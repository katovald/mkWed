import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Views/home.dart';
import 'Views/sign_in.dart';
import 'Views/walkthrough_screen.dart';
import 'Views/sign_up.dart';
import 'Views/root_screen.dart';

void main() {
  Firestore.instance.settings(timestampsInSnapshotsEnabled: true);
  SharedPreferences.getInstance().then((prefs) {
    runApp(ThisApp(prefs: prefs));
  });
}

class ThisApp extends StatelessWidget {
  final SharedPreferences prefs;

  Map<int, Color> MKcolor = {
    50:Color.fromRGBO(255, 242, 154, .1),
    100:Color.fromRGBO(255, 242, 154, .2),
    200:Color.fromRGBO(255, 242, 154, .3),
    300:Color.fromRGBO(255, 242, 154, .4),
    400:Color.fromRGBO(255, 242, 154, .5),
    500:Color.fromRGBO(255, 242, 154, .6),
    600:Color.fromRGBO(255, 242, 154, .7),
    700:Color.fromRGBO(255, 242, 154, .8),
    800:Color.fromRGBO(255, 242, 154, .9),
    900:Color.fromRGBO(255, 242, 154, 1.0),
  };

  ThisApp({this.prefs});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boda de Mel y Kato',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: MaterialColor(0xFFFAF8EB, MKcolor),
          accentColor: MaterialColor(0xFFFAF8EB, MKcolor)),
      routes: <String, WidgetBuilder>{
        '/walktrought': (BuildContext context) => new WalkthroughScreen(),
        '/root': (BuildContext context) => new RootScreen(),
        '/signin': (BuildContext context) => new SignInScreen(),
        '/signup': (BuildContext context) => new SignUpScreen(),
        '/main': (BuildContext context) => new Home(),
      },
      home: _handleScreens(),
    );
  }

  Widget _handleScreens() {
    bool seen = (prefs.getBool('seen') ?? false);
    if (seen) {
      return new RootScreen();
    } else {
      return new WalkthroughScreen(prefs: prefs);
    }
  }
}
