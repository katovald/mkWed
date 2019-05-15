import 'dart:async';
import 'package:app_editesp/BackW.dart';
import 'package:app_editesp/pages/CheckOne.dart';
import 'package:app_editesp/pages/CheckThree.dart';
import 'package:app_editesp/pages/CheckTwo.dart';
import 'package:app_editesp/pages/ItemList.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          accentColor:  Color(0xFF2350A6),
          ),

      //:::::::::::::::::::::::::: NAME ROUTING 1::::::::::::::::::::::::::::::::
      routes: {
        '/': (BuildContext context) => HomePage(), // Default Route
        '/check1': (BuildContext context) => CheckListOne(),
        '/check3': (BuildContext context) => CheckListThree(),
        '/item': (BuildContext context) => ItemList(),
        //Si navegamos a una ruta con nombre que no está especificada aquí....
        //...se ejecuta onUnkownRoute .
      },
    );
  }
}



