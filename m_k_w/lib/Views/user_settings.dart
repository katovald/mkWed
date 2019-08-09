import 'package:flutter/material.dart';
import 'package:m_k_w/Controlles/auth_manager.dart';
import 'package:m_k_w/Controlles/event_manager.dart';
import 'package:m_k_w/Models/invitado.dart';

import 'mk_flat_button.dart';

class Settings extends StatefulWidget {
  User usuario;

  Settings({this.usuario});

  @override
  State<Settings> createState() => _SettingsState();

}

class _SettingsState extends State<Settings> {
  bool _ligthAsistance;
  bool _ligthNotifications;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _ligthAsistance = widget.usuario.confirmado;
    _ligthNotifications = widget.usuario.notificame;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image(image: (widget.usuario.profilePictureURL != null
                ? new NetworkImage(widget.usuario.profilePictureURL)
                : new AssetImage("assets/default.png")),
              width: 100,
              height: 100,
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(child: Text("Bienvenido", textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromRGBO(101, 77, 73, 1.0),
                  fontSize: 18,
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w700),),)
        ),
        Padding(padding: EdgeInsets.all(10.0),
          child: Center(
            child: Text(widget.usuario.nombre, textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromRGBO(59, 89, 152, 1.0),
                  fontSize: 22,
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w700),),),),
        Padding(padding: EdgeInsets.all(10.0),
          child: Center(child: Text(widget.usuario.tipo == 'invitado'
              ? "Estea es la aplicacion del evento, si confirmas asistencia cuenta como un lugar asegurado, te esperamos el dia del evento"
              : "Eres un organizador de este evento",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(101, 77, 73, 1.0),
              decoration: TextDecoration.none,
              fontSize: 12.0,
              fontWeight: FontWeight.w700,
              fontFamily: "OpenSans",
            ),),),),
        Container(
          margin: EdgeInsets.all(10.0),
          alignment: Alignment.topRight,
          child: SwitchListTile(
            title: const Text("Asistire"),
            value: _ligthAsistance,
            onChanged: (value) {
              setState(() {
                _confirm(value);
                _ligthAsistance = value;
                widget.usuario.confirmado = value;
              });
            },
            secondary: Icon(Icons.verified_user),
            activeColor: Color.fromRGBO(252, 151, 9, 1.0),
            inactiveTrackColor: Color.fromRGBO(101, 77, 73, 0.3),
            inactiveThumbColor: Color.fromRGBO(101, 77, 73, 1.0),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          alignment: Alignment.topRight,
          child: SwitchListTile(
            value: _ligthNotifications,
            title: Text("Notificaciones"),
            onChanged: (value) {
             setState(() {
               _notify(value);
               _ligthNotifications = value;
               widget.usuario.confirmado = value;
             });
            },
            secondary: Icon(Icons.notifications_active),
            activeColor: Color.fromRGBO(252, 151, 9, 1.0),
            inactiveTrackColor: Color.fromRGBO(101, 77, 73, 0.3),
            inactiveThumbColor: Color.fromRGBO(101, 77, 73, 1.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Container(
                padding:
                const EdgeInsets.only(left: 25.0, top: 5.0, bottom: 5.0),
                child: Text("Cerrar sesion"),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                alignment: Alignment.centerRight,
                child: MKButton(
                  title: "Salir",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.white,
                  onPressed: () {
                    _logOut();
                  },
                  splashColor: Colors.black12,
                  borderColor: Color.fromRGBO(59, 89, 152, 1.0),
                  borderWidth: 0,
                  color: Color.fromRGBO(59, 89, 152, 1.0),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
      ],
    );
  }

  void _logOut() async {
    Auth.signOut();
  }

  void _confirm(bool response) async {
    Events.confirmInvite(uid: widget.usuario.userID, response: response);
  }

  void _notify(bool response) async {
    Events.notificame(uid: widget.usuario.userID, response: response);
  }
}
