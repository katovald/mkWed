import 'package:app_editesp/BackW.dart';
import 'package:app_editesp/pages/CheckOne.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  @override
  MyAppState createState() {

    return MyAppState();
  }

}

class MyAppState extends State<HomePage>{

  final TextEditingController _singleTextFieldController = TextEditingController();


  void onPressed(){
    print("Button pressed");

  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        body: new Stack(
          //alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            BackW(),
            Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(margin: EdgeInsets.all(33.0),
                      child:Image.asset("assets/cochesito.png"),
                    ),
                  ),
                  Container(margin: EdgeInsets.all(16.0),
                    child:TextField(
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        labelText:"Usuario",
                        labelStyle: TextStyle(color: Colors.deepOrange),
                        fillColor: Colors.white,
                        filled: true,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(),
                        )
                      ),
                    ),
                  ),
                  Container(margin: EdgeInsets.all(16.0),
                    child:TextField(
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
                      //obscureText: true,
                      decoration: InputDecoration(
                          labelText:"Contraseña",
                          labelStyle: TextStyle(color: Colors.deepOrange),
                          fillColor: Colors.white,
                          filled: true,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          )
                      ),
                    ),
                  ),

                  Container(margin: EdgeInsets.all(57.0),
                    child: ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: 200.0,
                            child:RaisedButton(
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.supervised_user_circle),
                                  Text("POWER")
                                ],
                              ),
                              color: Colors.deepOrange,
                              padding: EdgeInsets.all(15.0),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) => CheckListOne(),
                                ),
                              ),
                            )
                        )
                      ],
                    ),
                  ),


                ],
              ),

            )



          ],
        )
    );
  }
}