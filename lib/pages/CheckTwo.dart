import 'package:app_editesp/BackWGeneral.dart';
import 'package:app_editesp/formularioTareas.dart';
import 'package:app_editesp/pages/ChatPage.dart';
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
               Checklist(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
