import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MapaDireccionState();
  }
}

class _MapaDireccionState extends State<Mapa> {
  GoogleMapController mapController;

  static const LatLng _center = const LatLng(19.4044874, -99.080316);

  MapType _currentMapType = MapType.normal;

  final Map<String, Marker> _markers = {};

  Future<void> _onMapCreated(GoogleMapController controller) async {
    setState(() {
      _markers.clear();
      final marker = Marker(
        markerId: MarkerId("Iglesia"),
        position: LatLng(19.4109884, -99.0737776),
        infoWindow: InfoWindow(
          title: "Aqui la Boda",
          snippet:
              "6 PM, PUNTUALES",
        ),
      );
      _markers["Iglesia"] = marker;
      final marker2 = Marker(
        markerId: MarkerId("Salon"),
        position: LatLng(19.397309, -99.059186),
        infoWindow: InfoWindow(
          title: "Aqui la Fiesta",
          snippet:
          "7 PM, igual hasta las 8 PM",
        ),
      );
      _markers["Fiesta"] = marker2;
    });
  }

  void _ontapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GoogleMap(
          onMapCreated: _onMapCreated,
          mapType: _currentMapType,
          myLocationEnabled: true,
          initialCameraPosition: CameraPosition(target: _center, zoom: 11.0),
          markers: _markers.values.toSet(),
        ),
      ],
    );
  }
}
