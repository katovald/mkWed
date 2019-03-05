import 'package:app_editesp/BackW.dart';
import 'package:app_editesp/BackWGeneral.dart';
import 'package:app_editesp/CkeckListUnity.dart';
import 'package:app_editesp/pages/CameraPag.dart';
import 'package:app_editesp/pages/ItemList.dart';
import 'package:flutter/material.dart';

class CheckListOne extends StatelessWidget {
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
                  margin: EdgeInsets.all(7.0),
                  child: ButtonTheme(
                    child:FlatButton(
                      onPressed: () => Navigator.pop(context),
                      child: Image.asset('assets/logout.png', width:100.0 , height: 60.0),
                    ),
                  ),
                ),

                Container(
                    margin: EdgeInsets.all(7.0),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        FlatButton(
                          child: Image.asset('assets/camera.png', width:100.0 , height: 60.0),
                          onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => MyCamera(),
                          ),
                          ),
                        ),

                      ],
                    )
                ),

                CheckListUnity(),


              ],
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:  FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        child: Icon(
          Icons.check,
          color: Colors.black,),
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
