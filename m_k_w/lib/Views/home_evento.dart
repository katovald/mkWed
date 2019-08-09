import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:m_k_w/Controlles/album_manager.dart';
import 'package:m_k_w/Controlles/navigation_bar.dart';
import 'package:m_k_w/Controlles/invitacion_manager.dart';
import 'package:m_k_w/Models/invitado.dart';
import 'package:m_k_w/Views/regalos_view.dart';
import 'package:m_k_w/Views/user_settings.dart';

import 'direccion_view.dart';

class HomeEvento extends StatefulWidget {
  final User invitado;
  int currentindex = 2;
  List<Widget> _children = [];

  HomeEvento({this.invitado});

  @override
  State<HomeEvento> createState() => _HomeEventoState();

}

class _HomeEventoState extends State<HomeEvento>{

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    widget._children = [Mapa(),Regalos(),InvitacionManager(),AlbumManager(),Settings(usuario: widget.invitado)];
    return Scaffold(
      bottomNavigationBar: navigation(widget.currentindex, onTabTapped),
      body: widget._children[widget.currentindex],
    );
  }

  void onTabTapped(int index){
    setState(() {
      widget.currentindex = index;
    });
  }

}