import 'package:flutter/material.dart';
import '../Views/image_details.dart';

class Album extends StatelessWidget {
  List<String> imagenes = [];

  Album(this.imagenes);

  Widget _buildImagesAlbum(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(imagenes[index]),
          Text('Algunos Momentos importantes'),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Detalles'),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext contex) => VistaImagen('Algunos momentos importantes', imagenes[index]),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: _buildImagesAlbum,
      itemCount: imagenes.length,
    );
  }
}
