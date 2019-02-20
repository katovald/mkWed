import 'package:flutter/material.dart';

class Messages extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return _MessagesState();
  }

}

class _MessagesState extends State<Messages>{

  @override
  Widget build(BuildContext context) {

    return  Container(margin: EdgeInsets.all(16.0),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          TextField(
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                  labelText:"Mensaje",
                  labelStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(),
                  )
              ),
            ),

          FlatButton(
            onPressed: (){},
              color: Colors.green,
              child: Column(
                children: <Widget>[
                  Icon(Icons.send)
                ],
              )
          )

        ],
      ),
    );
  }

}