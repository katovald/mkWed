import 'package:app_editesp/ChatW.dart';
import 'package:app_editesp/CkeckListUnity.dart';
import 'package:app_editesp/pages/ChatPage.dart';
import 'package:flutter/material.dart';

class CheckListOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xFFF8F8F8),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {
            Navigator.pop(context);
            },
          ),
        title: Text("Recepción de Vehículo",
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
        backgroundColor: Colors.transparent,
        body: Container(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                CheckListUnity(),

              ],
            ),
          ),

        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton:  FloatingActionButton(
          backgroundColor: Color(0xFF2350A6),
          child: Icon(
            Icons.verified_user,
            color: Colors.white,),
          onPressed: () => Navigator.of(context)
              .pushNamedAndRemoveUntil('/item', (Route<dynamic> route) => false),
        ),

      ),

    );
  }
}
