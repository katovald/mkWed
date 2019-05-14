import 'package:app_editesp/pages/ChatPage.dart';
import 'package:app_editesp/pages/ItemList.dart';
import 'package:app_editesp/product_manager.dart';
import 'package:flutter/material.dart';

class reporte_Siniestros extends StatefulWidget {
  @override
  _reporte_SiniestrosState createState() => _reporte_SiniestrosState();
}

class _reporte_SiniestrosState extends State<reporte_Siniestros> {
  var _value1 = "1";
  DropdownButton _itemDown() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Accidente de transito",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Avería mecánica",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "3",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Pinchadura de llantas",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "4",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Robo",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _value1 = value;
      });
    },

    value: _value1,
    elevation: 2,
    //isExpanded: true,

    style: TextStyle(
      color: Colors.black,
      fontSize: 15.0,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Reporte de siniestros",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontFamily: "Sabritas",
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF1D539B),
      ),
      body:
      Center(

       child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 90,
                height: 40,
                margin: EdgeInsets.all(16),
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
              _itemDown(),
              Container(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  maxLines: 4,
                  cursorColor: Colors.black,

                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Comentario",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100
                    ),
                    fillColor: Colors.blueGrey,

                  ),
                  onChanged:(String value){},
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15.0),
                child: RaisedButton(
                  onPressed: () =>{
                  Navigator.of(context).pushNamedAndRemoveUntil('/item', ModalRoute.withName('/check1')),
                  },
                  textColor: Colors.white,
                  color: Color(0xFF2350A6),
                  child: Text(
                    "Enviar",
                  ),
                ),
              ),

            ],
          ),

        ),
      ),

    );
  }
}
