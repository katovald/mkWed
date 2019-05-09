import 'package:app_editesp/BackWGeneral.dart';
import 'package:app_editesp/CkeckListUnity.dart';
import 'package:app_editesp/pages/CameraPag.dart';
import 'package:app_editesp/pages/ItemList.dart';
import 'package:flutter/material.dart';

class CheckListOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/pantalla_extra.png'),
          )
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Container(
                  margin: EdgeInsets.all(10.0),
                ),

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

                CheckListUnity(),

              ],
            ),
          ),

        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton:  FloatingActionButton(
          backgroundColor: Color(0xFF00DCFF),
          child: Icon(
            Icons.verified_user,
            color: Colors.white,),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => ItemList(),
            ),
          ),
        ),

      ),

    );
  }
}
