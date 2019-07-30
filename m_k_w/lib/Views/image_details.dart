import 'package:flutter/material.dart';

class VistaImagen extends StatelessWidget {
  String _imagename;
  String _titulo;
  VistaImagen(this._titulo, this._imagename);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Nuestros momentos'),
      ),
      body: Padding( padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(_imagename),
            Container(
              padding: EdgeInsets.all(10.0),
                child: Text(_titulo)
            )
          ],
        ),
      ),
    );
  }
}
