import 'package:app_editesp/CameraW.dart';
import 'package:app_editesp/pages/ACameraApp.dart';
import 'package:app_editesp/BackW.dart';
import 'package:app_editesp/BackWGeneral.dart';
import 'package:app_editesp/ChatW.dart';
import 'package:app_editesp/CkeckListUnity.dart';
import 'package:app_editesp/MessagesField.dart';
import 'package:app_editesp/pages/CameraPag.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChatPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Color(0xFFF8F8F8),

      child: Scaffold(
          backgroundColor: Colors.transparent,
        body: Container(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Container(
                    margin: EdgeInsets.all(10.0),
                  ),

                   Row(
        children: [
        Container(
                  width: 90,
                  height: 40,
                  margin: EdgeInsets.all(16.0),
                  child: ButtonTheme(
                    child:
                    FlatButton(
                      onPressed: () => Navigator.pop(context), 
                      color: Color(0xFFFF2661),
                      child: Row( // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                      Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                      ),
                      Text(
                      "Salir",
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

                Container(
                child: CameraW(),
                ),
                ],
                ),
                Chat(),
                ],
              ),
        )
      ),
    );
  }
}
