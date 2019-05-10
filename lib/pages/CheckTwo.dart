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
                  width: 90,
                  height: 40,
                  margin: EdgeInsets.only(bottom: 16, top: 16),
                  child: ButtonTheme(
                    child:
                    FlatButton(
                      onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ChatPage(),
                     ),
                     ),
                      color: Color(0xFF1373DF),
                      child: Row( // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                      Icon(
                      Icons.chat,
                      color: Colors.white,
                      ),
                      Text(
                      "Chat",
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
                ),
                //CheckListUnity(),
                formulario_Tareas(),

                Row(
        children: [
        Container(
                  width: 100,
                  height: 40,
                  margin: EdgeInsets.all(16.0),
                  child: ButtonTheme(
                    child:
                    FlatButton(
                       onPressed: () => Navigator.pop(context, true), 
                      color: Color(0xFF25C13A),
                      child: Row( // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                      Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                      ),
                      Text(
                      "Enviar",
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
                  width: 110,
                  height: 40,
                  margin: EdgeInsets.only(bottom: 16, top: 16),
                  child: ButtonTheme(
                    child:
                    FlatButton(
                      onPressed: () => Navigator.pop(context, true), 
                      color: Color(0xFF00C5FF),
                      child: Row( // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                      Icon(
                      Icons.save,
                      color: Colors.white,
                      ),
                      Text(
                      "Guardar",
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
                ),


                /*Container(
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
                ),*/


              ],
            ),
          )
        ],
      ),


    );

  }
}
