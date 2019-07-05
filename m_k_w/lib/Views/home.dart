import 'package:flutter/material.dart';
import 'package:m_k_w/Controlles/album_manager.dart';
import 'package:m_k_w/Controlles/navigation_bar.dart';
import 'package:m_k_w/Controlles/invitacion_manager.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }

}

class _HomeState extends State<Home>{
  int _currentIndex = 2;
  final List<Widget> _children = [InvitacionManager(),InvitacionManager(),InvitacionManager(),AlbumManager(),InvitacionManager()];

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
