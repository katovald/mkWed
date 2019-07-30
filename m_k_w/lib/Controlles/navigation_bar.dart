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
            icon: Icon(Icons.map),
            title: Text('Lugar', style: TextStyle(fontSize: 10.0),)),
        new BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            title: Text('Regalos', style: TextStyle(fontSize: 10.0),)),
        new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Invitación', style: TextStyle(fontSize: 10.0),)),
        new BottomNavigationBarItem(
            icon: Icon(Icons.photo_album),
            title: Text('Album', style: TextStyle(fontSize: 10.0),)),
        new BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Configuracion', style: TextStyle(fontSize: 10.0),)),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: widget._currentIndex,
      onTap: widget.onTabTapped,
      backgroundColor: Color.fromRGBO(250, 248, 235, 1.0),
      selectedItemColor: Color.fromRGBO(101, 77, 73, 1.0),
      unselectedItemColor: Color.fromRGBO(101, 77, 73, .5),
    );
  }
}
