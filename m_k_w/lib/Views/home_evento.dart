import 'dart:io';
import 'package:flutter/material.dart';

import 'package:m_k_w/Controlles/album_manager.dart';
import 'package:m_k_w/Controlles/navigation_bar.dart';
import 'package:m_k_w/Controlles/invitacion_manager.dart';
import 'package:m_k_w/Models/invitado.dart';
import 'package:m_k_w/Views/regalos_view.dart';
import 'package:m_k_w/Views/user_settings.dart';
import 'direccion_view.dart';

import 'package:firebase_messaging/firebase_messaging.dart';

class HomeEvento extends StatefulWidget {
  final User invitado;
  int currentindex = 2;
  List<Widget> _children = [];

  HomeEvento({this.invitado});

  @override
  State<HomeEvento> createState() => _HomeEventoState();

}

class _HomeEventoState extends State<HomeEvento>{

  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    super.initState();
    firebaseCloudMessaging_Listeners();
  }

  void firebaseCloudMessaging_Listeners() {
    if (Platform.isIOS) iOS_Permission();

    _firebaseMessaging.getToken().then((token){
      print(token);
    });

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print('on message $message');
        var notification = message['notification'];
      },
      onResume: (Map<String, dynamic> message) async {
        print('on resume $message');
      },
      onLaunch: (Map<String, dynamic> message) async {
        print('on launch $message');
      },
    );
  }

  void iOS_Permission() {
    _firebaseMessaging.requestNotificationPermissions(
        IosNotificationSettings(sound: true, badge: true, alert: true)
    );
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings)
    {
      print("Settings registered: $settings");
    });
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