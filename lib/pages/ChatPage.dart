import 'package:app_editesp/ChatW.dart';
import 'package:flutter/material.dart';


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
              child:ListView(
                children: <Widget>[

                  Container(
                    margin: EdgeInsets.all(10.0),
                  ),
                Chat(),
                ],
              ),
        )
      ),
    );
  }
}
