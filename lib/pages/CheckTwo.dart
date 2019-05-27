import 'package:app_editesp/BackW.dart';
import 'package:app_editesp/BackWGeneral.dart';
import 'package:app_editesp/ChatW.dart';
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
      appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_left),
          onPressed: () {
            Navigator.pop(context);
            },
          ),
        title: Text("Checklist de Verificacíon",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontFamily: "Sabritas",
          ),
        ),
         bottom: PreferredSize(
           child: InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ChatPage(),
                     ),
                     ),
          child: Container(
            color: Color(0xFFEAEAEA),
            constraints: BoxConstraints.expand(height: 50),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                   textDirection: TextDirection.rtl,
              children: <Widget>[
                Container(
                padding: EdgeInsets.only(right: 16),
                 child: Text(
              "Mensajes",
              style: TextStyle(fontSize: 16),
               ),
                ),
                Container(
                padding: EdgeInsets.only(right: 5),
                child: Icon(
                      Icons.chat,
                      color: Color(0xFF1D539B),
                      ),
                ),
            ],
            ),
          ),
           ),
          preferredSize: Size(50, 50),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF1D539B),
      ),
      body: Stack(
        children: <Widget>[
          BackWGeneral(),
          Container(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[

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
                      color:  Color(0xFF2350A6),
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
              ],
            ),
          )
        ],
      ),


    );

  }
}
