import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  List<String> imagenes = [];
  List<String> textos = [];

  Album({this.textos, this.imagenes});

  Widget _buildImagesAlbum(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal:10.0),
            child: Image(image: AssetImage(imagenes[index]),
              width: 500,
              height: 500,
              fit: BoxFit.contain,),),
          Padding(padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal:10.0),
            child: Text(textos[index],
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: "OpenSans",
                fontSize: 18,
                color: Color.fromRGBO(101, 77, 73, 1.0),
                backgroundColor: Color.fromRGBO(250, 248, 235, 1.0),
              ),
            ),
          ),
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
