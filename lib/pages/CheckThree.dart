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
      appBar: AppBar(
          leading: Container(),
        title: Text("Devolución de Vehículo",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontFamily: "Sabritas",
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF1D539B),
      ),
      body: Stack(
        children: <Widget>[
          BackWGeneral(),
          Container(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
               // CheckListUnity(),
                  Formulario(),

              ],
            ),
          )
        ],
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:  FloatingActionButton(
        backgroundColor: Color(0xFF2350A6),
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
    );
  }
}
