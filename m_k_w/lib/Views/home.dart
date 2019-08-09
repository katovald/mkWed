import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:m_k_w/Models/invitado.dart';
import 'package:m_k_w/Views/home_alta.dart';
import 'package:m_k_w/Views/home_evento.dart';
import 'dart:async';

class Home extends StatefulWidget {
  final FirebaseUser firebaseUser;

  Home({this.firebaseUser});

  @override
  State<StatefulWidget> createState() => new _HomeState();
}

class _HomeState extends State<Home>{
  User _invitado;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection("users").where(
          "userID", isEqualTo: widget.firebaseUser.uid).snapshots(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return new Container(
            color: Colors.white,
          );
        } else {
          if (snapshot.data.documents.elementAt(0).data['evento'] != null) {
            _invitado = new User(
                userID: widget.firebaseUser.uid,
                nombre: snapshot.data.documents.elementAt(0).data['nombre'],
                email: widget.firebaseUser.email,
                profilePictureURL: widget.firebaseUser.photoUrl,
                tipo: snapshot.data.documents.elementAt(0).data['tipo'],
                boletos: snapshot.data.documents.elementAt(0).data['boletos'],
                confirmado: snapshot.data.documents.elementAt(0).data['confirmado'],
                notificame: snapshot.data.documents.elementAt(0).data['notificame']
            );
            return new HomeEvento(invitado: _invitado);
          } else {
            return new HomeRegistro(firebaseUser: widget.firebaseUser);
          }
        }
      },
    );
  }
}
