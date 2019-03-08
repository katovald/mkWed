import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class CameraW extends StatefulWidget {
  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<CameraW> {
  File image;
  Future getImage() async {
    File picture = await ImagePicker.pickImage(
        source: ImageSource.camera, maxWidth: 300.0, maxHeight: 500.0);
    setState(() {
      image = picture;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(7.0),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            FlatButton(
              child: Image.asset('assets/camera.png', width:100.0 , height: 60.0),
              onPressed: getImage,
            )
          ],
        )
    );
  }
}
