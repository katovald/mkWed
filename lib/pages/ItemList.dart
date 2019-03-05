import 'package:app_editesp/BackW.dart';
import 'package:app_editesp/BackWGeneral.dart';
import 'package:flutter/material.dart';
import 'package:app_editesp/ListModel.dart';
import '../product_manager.dart';

List<String> prod = ["TAREA A","TAREA B","TAREA C","TAREA D", "TAREA E"];


class ItemList extends StatelessWidget {

  ListProductsModel products = new ListProductsModel(prod);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: <Widget>[
          BackWGeneral(),
          ProductManager(products.getListP()),

        ],
      ),
    );
  }
}
