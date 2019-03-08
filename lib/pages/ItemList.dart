import 'package:app_editesp/BackW.dart';
import 'package:app_editesp/BackWGeneral.dart';
import 'package:flutter/material.dart';
import 'package:app_editesp/ListModel.dart';
import '../product_manager.dart';
import 'package:android_intent/android_intent.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

List<String> prod = ["TAREA A","TAREA B","TAREA C","TAREA D", "TAREA E"];


class ItemList extends StatelessWidget {


  _openMap() async {
    // Android
    const url = 'geo:19.404225,-99.154043';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // iOS
      const url = 'http://maps.apple.com/?ll=19.404225,-99.154043';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

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

      floatingActionButton:  FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        child: Icon(
          Icons.map,
          color: Colors.black,),
        onPressed: (){
          _openMap();

        },
      ),
    );



  }
}
