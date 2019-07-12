import 'package:flutter/material.dart';

class navigation extends StatefulWidget {
  int _currentIndex;
  Function onTabTapped;

  navigation(this._currentIndex, this.onTabTapped);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _navigation();
  }
}

class _navigation extends State<navigation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      items: [
        new BottomNavigationBarItem(
            icon: Icon(Icons.map), title: Text('Lugar')),
        new BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard), title: Text('Regalos')),
        new BottomNavigationBarItem(
            icon: Icon(Icons.home), title: Text('Invitación')),
        new BottomNavigationBarItem(
            icon: Icon(Icons.photo_album), title: Text('Album')),
        new BottomNavigationBarItem(
            icon: Icon(Icons.settings), title: Text('Configuracion')),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: widget._currentIndex,
      onTap: widget.onTabTapped,
    );
  }
}
