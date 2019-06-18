import 'package:app_editesp/Formularios/formulario.dart';
import 'package:app_editesp/pages/CheckThree.dart';
import 'package:app_editesp/pages/CheckTwo.dart';
import 'package:app_editesp/pages/mural.dart';
import 'package:app_editesp/Formularios/reporte.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:convert' as JSON;

//TODO: url http://apicamsavpro/tareas/{numerodeempleado}

final String myJSONProducts = '{"eventos":[{"cuenta":"40030177","telefono":"5530127033","latitud":19.432650,"longitud":-99.185309, "estatus":"pendiente"},'
    '{"cuenta":"40030178","telefono":"5530127033","latitud":19.419211,"longitud":-99.171414,"estatus": "pausada"},'
    '{"cuenta":"40030179","telefono":"5530127033","latitud":19.425205,"longitud":-99.173796,"estatus": "pendiente"}'
    ']}';


class TaskMapManager extends StatefulWidget {
  final String id;
  final String nombre;
  TaskMapManager({Key key, this.id, this.nombre}) : super (key: key);
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<TaskMapManager> { //State Class

  Map<String, dynamic> jsonMapProducts = JSON.jsonDecode(myJSONProducts);

  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(19.415269, -99.136779);
  final Set<Marker> _markers = {};

  LatLng _lastMapPosition = _center;

  void _addTaskMarker(Evento e) {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(e.cuenta),
        position: e.punto,
        infoWindow: InfoWindow(
          title: e.cuenta,
          snippet: e.estatus,
          onTap: () {
            Navigator
                .push<bool>(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => CheckListTwo(title: e.cuenta, id: widget.id, nombre: widget.nombre,),
              ),
            );
          },
        ),
        icon: e.estatus == 'pendiente' ? BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed) : BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      ));
    });
  }

  void _removeTaskMarker(String id){
    setState(() {

    });
  }

  void _onCameraMove(CameraPosition position){
    _lastMapPosition = position.target;
  }

  void _onMapCreated(GoogleMapController controller){
    _controller.complete(controller);
    _parseJSON();
  }

  void _parseJSON(){
    List eventsArray = jsonMapProducts["eventos"];
    print(eventsArray);
    eventsArray.forEach((element) => {
      this._addTaskMarker(Evento.fromJson(element))
    });
  }
  List<DocumentSnapshot> query;
  var Links = List<String>();
  QuerySnapshot snapshot;
  Future link() async{
    snapshot = await Firestore.instance.collection('Multimedia').where('Estatus', isEqualTo: 'Activo').getDocuments();
    query = snapshot.documents;
   // query.forEach((query) => print(query['Link']));
    query.forEach((query) =>  Links.add(query['Link']));
    print('Links: $Links');
  }

  @override
  Widget build(BuildContext context){
    print  ('idMapa: ${widget.id}');
    print('nombressR: ${widget.nombre}');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        leading: Container(

        ),
          title: Text("Lista de Tareas",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontFamily: "Sabritas",
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF1D539B),
        ),
        endDrawer: Drawer(
          elevation: 10.0,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('Rafael Ramirez Marquez'),
                  accountEmail: Text('rmarquez@centraldealarmas.com.mx'),
                  currentAccountPicture:
                  Container(
                    height: 120,
                    width: 120,
                    child:Image(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/rafa.png')),),
                  decoration: BoxDecoration(color: Color(0xFF1D539B)),
                ),
                ListTile(
                  leading: Icon(Icons.warning),
                  title: Text('Reporte de siniestros'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Siniestros(id: widget.id, nombre: widget.nombre,)),
                    );
                  },
                ),
                Divider(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.accessibility),
                  title: Text('CAMSA contigo'),
                  onTap: () {
                    link();
    Future.delayed(Duration(seconds: 1), () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => Mural(Link: Links),
                    ),
                    );
                  },
                    );
                  },
                ),
                Divider(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Terminar Turno'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Formulario(id: widget.id, nombre: widget.nombre,)),
                    );
                  },
                ),
                Divider(
                  height: 2.0,
                ),
              ],
          ),
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              markers: _markers,
              onCameraMove: _onCameraMove,
              initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0
              ),
        ),

          ],
        ),
      ),
    );
  }
}

class Evento{
  final String telefono;
  final String cuenta;
  final double latitud;
  final double longitud;
  final LatLng punto;
  final String estatus;

  Evento(this.cuenta, this.telefono, this.latitud, this.longitud, this.punto, this.estatus);

  Evento.fromJson(Map<String, dynamic> json)
      : cuenta    = json['cuenta'],
        telefono  = json['telefono'],
        latitud   = json['latitud'],
        longitud  = json['longitud'],
        estatus   = json['estatus'],
        punto     = LatLng(json['latitud'], json['longitud']);

  Map<String, dynamic> toJson() =>
      {
        'cuenta': cuenta,
        'telefono': telefono,
        'latitud': latitud,
        'longitud': longitud,
        'estatus'  : estatus,
      };
}