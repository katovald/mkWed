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
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackWGeneral(),

          Container(
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


                Container(
                    margin: EdgeInsets.all(7.0),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        FlatButton(
                          child: Image.asset('assets/camera.png', width:100.0 , height: 60.0),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => MyCamera(),
                            ),
                          ),
                        ),

                      ],
                    )
                ),



                /*Container(
                    margin: EdgeInsets.all(15.0),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        FlatButton(
                            onPressed: () => Navigator.pop(context),
                            color: Colors.deepOrange,
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.arrow_back_ios)
                              ],
                            )
                        ),


                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.camera_alt),
                            ],
                          ),
                          color: Colors.grey,onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => MyCamera(),
                          ),
                        ),
                        ),

                      ],
                    )
                ),*/

                ChatW(),
                Messages(),


              ],
            ),
          )
        ],
      ),
    );
  }
}
