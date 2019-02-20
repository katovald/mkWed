import 'package:app_editesp/BackW.dart';
import 'package:flutter/material.dart';
import 'package:app_editesp/ListModel.dart';
import '../product_manager.dart';

List<String> prod = ["TAREA1","TAREA2","TAREA3"];


class ItemList extends StatelessWidget {

  ListProductsModel products = new ListProductsModel(prod);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: <Widget>[
          BackW(),
          ProductManager(products.getListP()),

        ],
      ),
    );
  }
}
