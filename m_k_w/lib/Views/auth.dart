import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:m_k_w/Views/sign_in.dart';

import 'home.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {

    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return new Container(
            color: Colors.white,
          );
        } else {
          if (snapshot.hasData) {
            return new Home(
              firebaseUser: snapshot.data,
            );
          } else {
            return SignInScreen();
          }
        }
      },
    );
  }
}
