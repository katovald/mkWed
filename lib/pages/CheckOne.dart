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
                  margin: EdgeInsets.all(7.0),
                  child: ButtonTheme(
                    child:FlatButton(
                      onPressed: () => Navigator.pop(context),
                      child: Image.asset('assets/logout.png', width:100.0 , height: 60.0),
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
