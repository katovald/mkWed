import 'package:app_editesp/CameraAcc.dart';
import 'package:flutter/material.dart';


class MyCamera extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: CameraApp(),
        floatingActionButton: null,
      );
  }
}