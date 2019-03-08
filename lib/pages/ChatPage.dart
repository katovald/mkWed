import 'package:app_editesp/CameraW.dart';
import 'package:app_editesp/pages/ACameraApp.dart';
import 'package:app_editesp/BackW.dart';
import 'package:app_editesp/BackWGeneral.dart';
import 'package:app_editesp/ChatW.dart';
import 'package:app_editesp/CkeckListUnity.dart';
import 'package:app_editesp/MessagesField.dart';
import 'package:app_editesp/pages/CameraPag.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(

        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/pantalla_extra.png'),
            )
        ),

      child: Scaffold(
          backgroundColor: Colors.transparent,
        body: Container(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Container(
                    margin: EdgeInsets.all(10.0),
                  ),

                  Container(
                    margin: EdgeInsets.all(7.0),
                    child: ButtonTheme(
                      child:FlatButton(
                        onPressed: () => Navigator.pop(context),
                        child: Image.asset('assets/logout.png', width:100.0 , height: 60.0),
                      ),
                    ),
                  ),

                  CameraW(),
                  Chat(),


                ],
              ),
        )
      ),
    );
  }
}
