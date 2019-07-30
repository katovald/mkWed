import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:m_k_w/Controlles/auth_manager.dart';

import 'mk_flat_button.dart';

class Settings extends StatelessWidget {
  final FirebaseUser firebaseUser;

  Settings({this.firebaseUser});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Container(
          width: 200.0,
          height: 200.0,
          alignment: Alignment.center,
          child: Image(image: (firebaseUser.photoUrl != null
              ? new NetworkImage(firebaseUser.photoUrl)
              : new AssetImage("assets/default.png"))
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Bienvenido"),
        ),
        Padding(padding: EdgeInsets.all(10.0), child: Text("Nombre a mostrar")),
        Container(
          margin: EdgeInsets.all(10.0),
          alignment: Alignment.topRight,
          child: SwitchListTile(
            title: const Text("Asistire"),
            value: false,
            onChanged: (value) {
              if (value) {
              } else {}
            },
            secondary: Icon(Icons.verified_user),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          alignment: Alignment.topRight,
          child: SwitchListTile(
            value: true,
            title: Text("Notificaciones"),
            onChanged: (value) {
              if (value) {
              } else {}
            },
            secondary: Icon(Icons.notifications_active),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          alignment: Alignment.topRight,
          child: MKButton(
            title: "Salir",
            fontSize: 22,
            fontWeight: FontWeight.w700,
            textColor: Colors.white,
            onPressed: () {
              _logOut();
            },
            splashColor: Colors.black12,
            borderColor: Color.fromRGBO(59, 89, 152, 1.0),
            borderWidth: 0,
            color: Color.fromRGBO(59, 89, 152, 1.0),
          ),
        )
      ],
    );
  }

  void _logOut() async {
    Auth.signOut();
  }
}
