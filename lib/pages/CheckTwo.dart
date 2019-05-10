import 'package:app_editesp/BackW.dart';
import 'package:app_editesp/BackWGeneral.dart';
import 'package:app_editesp/CkeckListUnity.dart';
import 'package:app_editesp/formularioTareas.dart';
import 'package:app_editesp/pages/CameraPag.dart';
import 'package:app_editesp/pages/ChatPage.dart';
import 'package:app_editesp/pages/ItemList.dart';
import 'package:flutter/material.dart';

class CheckListTwo extends StatelessWidget {

  final String title;
  CheckListTwo(this.title);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackWGeneral(),
          Container(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[

                Container(
                  margin: EdgeInsets.all(10.0),
                ),


                Container(
                  margin: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Text(title,
                        style: TextStyle(color: Colors.white, fontSize: 20.0),),

                      FlatButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => ChatPage(),
                            ),
                          ),
                          color: Colors.deepOrange,
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.message)
                            ],
                          )
                      ),





                    ],
                  )
                ),

                Container(
                    margin: EdgeInsets.all(13.0),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.email),
                            ],
                          ),
                          color: Colors.grey,
                          onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => MyCamera(),
                          ),
                        ),
                        ),

                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.camera_alt),
                            ],
                          ),
                          color: Colors.grey,
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

                //CheckListUnity(),
                formulario_Tareas(),


                Container(
                    margin: EdgeInsets.all(13.0),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Text("ENVIAR  "),
                              Icon(Icons.send),
                            ],
                          ),
                          color: Colors.green,
                          onPressed: () => Navigator.pop(context, true),
                        ),

                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Text("GUARDAR"),
                              Icon(Icons.save),
                            ],
                          ),
                          color: Colors.redAccent,
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => ItemList(),
                            ),
                          ),
                        ),

                      ],
                    )
                ),


              ],
            ),
          )
        ],
      ),


    );

  }
}
