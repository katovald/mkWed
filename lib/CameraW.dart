import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// YA NO SE USA :U
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
                  width: 90,
                  height: 40,
                  margin: EdgeInsets.only(bottom: 16, top: 16),
                  child: ButtonTheme(
                    child:
                    FlatButton(
                    onPressed: getImage,
                      color: Color(0xFFFFD100),
                      child: Row( // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                      Icon(
                      Icons.camera,
                      color: Colors.white,
                      ),
                      Text(
                      "Foto",
                      style: TextStyle(
                        fontSize: 15,
                      color: Colors.white,
                        ),
                      )
                  ],
                ),
                  ),
                  ),
                );
  }
}
