import 'package:app_editesp/BackWGeneral.dart';
import 'package:flutter/material.dart';
import '../product_manager.dart';
import 'dart:convert' as JSON;

class ItemList extends StatelessWidget {

  Map<String,dynamic> jsonMapProducts = JSON.jsonDecode(myJSONProducts);

  void _printJSON(){
    print(jsonMapProducts);
    print(jsonMapProducts["title"]);
    print(jsonMapProducts["description"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: <Widget>[
          BackWGeneral(),
          TaskMapManager(),
        ],
      ),
    );
  }
}
