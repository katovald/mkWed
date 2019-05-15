import 'package:app_editesp/BackWGeneral.dart';
import 'package:app_editesp/CkeckListUnity.dart';
import 'package:app_editesp/pages/CameraPag.dart';
import 'package:app_editesp/pages/ItemList.dart';
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
        centerTitle: true,
        backgroundColor: Color(0xFF1D539B),
      ),
        backgroundColor: Colors.transparent,
        body: Container(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Container(
                  margin: EdgeInsets.all(10.0),
                ),

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
