import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:m_k_w/Views/main_screen.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String Usuario = '';
  String Password = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build,

    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return new Container(
            color: Colors.white,
          );
        } else {
          if (snapshot.hasData) {
            return new MainScreen(
              firebaseUser: snapshot.data,
            );
          } else {
            return WelcomeScreen();
          }
        }
      },
    );
  }
}
