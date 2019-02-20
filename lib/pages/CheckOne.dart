import 'package:app_editesp/BackW.dart';
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
          BackW(),
          Container(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Container(
                  margin: EdgeInsets.all(10.0),
                ),


                Container(
                  margin: EdgeInsets.all(13.0),
                  child:RaisedButton(
                      onPressed: () => Navigator.pop(context),
                      color: Colors.deepOrange,
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.supervised_user_circle)
                        ],
                      )
                  ),
                ),

                Container(
                    margin: EdgeInsets.all(13.0),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.camera_alt),
                            ],
                          ),
                          color: Colors.grey,
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
        backgroundColor: Colors.green,
        child: Icon(Icons.check),
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
