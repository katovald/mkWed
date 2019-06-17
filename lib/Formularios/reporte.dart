import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_editesp/Chat/ChatPage.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Siniestros extends StatefulWidget {
  @override
  _SiniestrosState createState() => _SiniestrosState();
}
class _SiniestrosState extends State<Siniestros> {
  var _value1 = "Accidente de transito";
  TextEditingController _sinTextController =   TextEditingController();
  String _numero = '369888';
  LatLng _center ;
  Position currentLocation;

  @override
  void initState() {
    super.initState();
    getUserLocation();
  }

  Future<Position> locateUser() async {
    return Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  getUserLocation() async {
    currentLocation = await locateUser();
    setState(() {
      _center = LatLng(currentLocation.latitude, currentLocation.longitude);
    });
    print('center $_center');
  }
  var now = DateTime.now();
  String numEconomico = "76AB2X";
  Future _siniestro(String comentario) async {
    _sinTextController.clear();
   final sin = await Firestore.instance.collection('Documentos-Vehiculos').document('$numEconomico').collection('Siniestros').add({
      'Número de empleado': _numero,
     'Punto':'${currentLocation.latitude},${currentLocation.longitude}',
      'Siniestro': _itemDown().value,
      'Comentario': comentario,
      'Hora': now
    });
   String id = sin.documentID;
    //print("ID: $id");
    Firestore.instance.collection('Asignaciones').add({
      'Hora': now,
      'NoEmpeado': 166487,
      'Placa': numEconomico,
      'Tipo': 'Siniestro',
      'id':id,
    });
  }
  DropdownButton _itemDown() =>
      DropdownButton<String>(
        value: _value1,
        onChanged: (String newValue) {
          setState(() {
           _value1 = newValue;
          });
        },
        items: <String>['Accidente de transito', 'Averia mecánica', 'Pinchadura de llantas', 'Robo']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        })
            .toList(),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Reporte de siniestros",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontFamily: "Sabritas",
          ),
        ),
        bottom: PreferredSize(
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ChatPage(),
              ),
            ),
            child: Container(
              color: Color(0xFFEAEAEA),
              constraints: BoxConstraints.expand(height: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 16),
                    child: Text(
                      "Mensajes",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 5),
                    child: Icon(
                      Icons.chat,
                      color: Color(0xFF1D539B),
                    ),
                  ),
                ],
              ),
            ),
          ),
          preferredSize: Size(50, 50),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF1D539B),
      ),
      body:
      Center(

       child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Expanded(
               child: ListView(
                  children: <Widget>[

                    Align(
                      alignment: Alignment.topRight,
                      child: _itemDown(),
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      child: TextField(
                        controller: _sinTextController,
                        maxLines: 4,
                        cursorColor: Colors.black,

                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Comentario",
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w100
                          ),
                          fillColor: Colors.blueGrey,

                        ),
                        onChanged:(String value){},
                      ),
                    ),


                  ],

                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 15.0),
                child: RaisedButton(
                  onPressed: () =>{
                  Navigator.of(context).pushNamedAndRemoveUntil('/item', ModalRoute.withName('/check1')),
                    _siniestro(_sinTextController.text),
                  },
                  textColor: Colors.white,
                  color: Color(0xFF2350A6),
                  child: Text(
                    "Enviar",
                  ),
                ),
              ),
            ],
          ),

        ),
      ),

    );
  }
}
