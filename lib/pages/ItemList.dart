import 'package:app_editesp/BackWGeneral.dart';
import 'package:flutter/material.dart';
import '../product_manager.dart';

class ItemList extends StatelessWidget {
  final String id;
  final String nombre;
  ItemList({Key key, this.id, this.nombre}) : super (key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: <Widget>[
          BackWGeneral(),
          TaskMapManager(id: id, nombre: nombre,),
        ],
      ),
    );
  }
}
