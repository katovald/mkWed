import 'package:app_editesp/BackWGeneral.dart';
import 'package:app_editesp/CkeckListUnity.dart';
import 'package:app_editesp/formulario.dart';
import 'package:app_editesp/pages/CameraPag.dart';
import 'package:app_editesp/pages/ItemList.dart';
import 'package:app_editesp/pages/home.dart';
import 'package:flutter/material.dart';

class CheckListThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackWGeneral(),
          Container(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Container(
                  margin: EdgeInsets.all(10.0),
                ),

                Container(
                  width:100.0,
                  height: 60.0,
                  margin: EdgeInsets.all(7.0),
                ),

               // CheckListUnity(),
                  Formulario(),

              ],
            ),
          )
        ],
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:  FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        child: Icon(
          Icons.check,
          color: Colors.black,),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => HomePage(),
          ),
        ),
      ),
    );
  }
}
