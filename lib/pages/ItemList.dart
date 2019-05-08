import 'package:app_editesp/BackWGeneral.dart';
import 'package:flutter/material.dart';
import 'package:app_editesp/ListModel.dart';
import '../product_manager.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';
import 'dart:convert' as JSON;

String myJSONProducts = '{"title":"TAREA A","description":"Descripcion General"}';

List<String> prod = ["TAREA A","TAREA B","TAREA C","TAREA D", "TAREA E"];


class ItemList extends StatelessWidget {

  Map<String,dynamic> jsonMapProducts = JSON.jsonDecode(myJSONProducts);

  void _printJSON(){
    print(jsonMapProducts);
    print(jsonMapProducts["title"]);
    print(jsonMapProducts["description"]);
  }


  _openMap() async {
    // Android
    var url = 'geo:0,0?q=Parque+Delta';
    if (Platform.isIOS) {
      // iOS
      url = 'http://maps.apple.com/?ll=19.404225,-99.154043';
    }
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  _openMap2() async {
    // Android
    const url = 'geo:0,0?q=Parque+Delta';
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

         floatingActionButton: FloatingActionButton.extended(
         onPressed: (){
         // _printJSON();
          _openMap();
          },
          icon: Icon(Icons.map),
          label: Text("Mapa"),
          backgroundColor: Colors.lightBlueAccent,
          foregroundColor: Colors.white,
        ),
         );



  }
}
