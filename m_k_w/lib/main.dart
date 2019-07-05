import 'package:flutter/material.dart';

import 'Views/home.dart';

void main() => runApp(ThisApp());

class ThisApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple
      ),
      home: Home(),
    );
  }
}
