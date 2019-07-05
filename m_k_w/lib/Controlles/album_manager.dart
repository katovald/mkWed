import 'package:flutter/material.dart';
import 'package:m_k_w/Models/album.dart';

class AlbumManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AlbumManager();
  }
}

class _AlbumManager extends State<AlbumManager> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Expanded(child: Album([
          'assets/album01.jpg',
          'assets/album02.jpg',
          'assets/album03.jpg',
          'assets/album04.jpg'
        ])
        )
      ],
    );
  }
}
