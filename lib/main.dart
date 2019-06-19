import 'dart:async';
import 'package:app_editesp/pages/CheckOne.dart';
import 'package:app_editesp/pages/CheckThree.dart';
import 'package:app_editesp/pages/ItemList.dart';
import 'package:app_editesp/pages/home.dart';
import 'package:app_editesp/pages/home_password.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;
Future<void> main() async {
  cameras = await availableCameras();
  /*snapshot= await Firestore.instance.collection('Usuarios').document('169861').get();
  password = snapshot['Password'];
  print('Contra: $password');*/
  runApp(MyApp());
}
var password;
DocumentSnapshot snapshot;
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  /*  Widget login(){
      if (password == null){
       return HomePage(main);
      }else{
        return HomePagePass();
      }
    }
    HomePage(main);*/
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          accentColor:  Color(0xFF2350A6),
          ),
        home: HomePagePass(),
      routes: {
       // '/': (BuildContext context) => HomePage(main), // Default Route
        '/check1': (BuildContext context) => CheckListOne(),
        '/check3': (BuildContext context) => CheckListThree(),
        '/item': (BuildContext context) => ItemList(),
      },
    );
  }
}



