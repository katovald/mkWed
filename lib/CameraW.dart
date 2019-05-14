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
        source: ImageSource.camera, maxWidth: 500.0, maxHeight: 300.0,);
    setState(() {
      image = picture;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: image == null
              ?Text('')
              :Image.file((image)),
        ),
        SizedBox(height: 10),
        Container(
          width: 90,
          height: 40,
          margin: EdgeInsets.only(bottom: 14),
          child: ButtonTheme(
            child:
            FlatButton(
              onPressed: getImage,
              color: Color(0xFFFFD100),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
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
        ),
      ],
    );

  }
}
