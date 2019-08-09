import 'package:flutter/material.dart';
import 'package:m_k_w/Views/presentacion_screen.dart';
import 'package:m_k_w/Views/home.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RootScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new StreamBuilder<FirebaseUser>(
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
            return WelcomeScreen();
          }
        }
      },
    );
  }
}