import 'dart:async';
import 'package:app_editesp/BackW.dart';
import 'package:app_editesp/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;
Future<void> main() async {
  cameras = await availableCameras();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      home:HomePage(),
    );
  }
}



