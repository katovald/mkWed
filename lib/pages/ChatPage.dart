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
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_left),
          onPressed: () {
            Navigator.pop(context);
            },
          ),
        title: Text("Chat",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontFamily: "Sabritas",
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF1D539B),
      ),
          backgroundColor: Colors.transparent,
        body: Container(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Container(
                    margin: EdgeInsets.all(10.0),
                  ),

                   Row(
                ),
                Chat(),
                ],
              ),
        )
      ),
    );
  }
}
