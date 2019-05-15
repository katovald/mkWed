import 'package:app_editesp/BackWGeneral.dart';
import 'package:flutter/material.dart';
import '../product_manager.dart';

class ItemList extends StatelessWidget {

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
