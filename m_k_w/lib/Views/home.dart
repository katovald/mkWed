import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:m_k_w/Controlles/album_manager.dart';
import 'package:m_k_w/Controlles/navigation_bar.dart';
import 'package:m_k_w/Controlles/invitacion_manager.dart';
import 'package:m_k_w/Views/user_settings.dart';

import 'direccion_view.dart';

class Home extends StatefulWidget {
  final FirebaseUser firebaseUser;

  Home({this.firebaseUser});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }

}

class _HomeState extends State<Home>{
  final GlobalKey<ScaffoldState> _scafoldKey = new GlobalKey<ScaffoldState>();
  List<Widget> _children = [];

  @override
  void initState() {
    super.initState();
    _currentIndex = 2;
    print(widget.firebaseUser);
    _children = [Mapa(),InvitacionManager(),InvitacionManager(),AlbumManager(),Settings(firebaseUser: widget.firebaseUser,)];
  }

  int _currentIndex;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: navigation(_currentIndex, onTabTapped),
      body: _children[_currentIndex],
    );
  }

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}
