import 'package:flutter/material.dart';


class ChatW extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return _CheckListUState();
  }

}

class _CheckListUState extends State<ChatW>{



  @override
  Widget build(BuildContext context) {

    return Container(
      width: 330.0,
      height: 300.0,
      decoration: new BoxDecoration(
        color: Colors.blueGrey,
        border: Border.all(
          width: 2.0,
        ),
        borderRadius: BorderRadius.all(
            Radius.circular(5.0) //                 <--- border radius here
        ),
      ),
      margin: EdgeInsets.all(20.0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Container(
              margin: EdgeInsets.all(13.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text("ZONA DE CHAT"),

                ],
              )
          ),



        ],
      ),
    );

  }
}