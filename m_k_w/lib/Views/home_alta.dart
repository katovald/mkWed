import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m_k_w/Controlles/auth_manager.dart';
import 'package:m_k_w/Controlles/event_manager.dart';

import 'app_text_fields.dart';
import 'mk_flat_button.dart';

class HomeRegistro extends StatefulWidget {
  final FirebaseUser firebaseUser;

  HomeRegistro({this.firebaseUser});

  @override
  State<HomeRegistro> createState() => _HomeRegistroState();
}

class _HomeRegistroState extends State<HomeRegistro> {
  VoidCallback onBackPress;
  final TextEditingController _codigo = new TextEditingController();
  MKTextField _codigoField;

  @override
  void initState() {
    super.initState();

    onBackPress = () {};

    _codigoField = new MKTextField(
      baseColor: Colors.grey,
      borderColor: Colors.grey[400],
      errorColor: Colors.red,
      controller: _codigo,
      hint: "Codigo de evento",
      inputType: TextInputType.emailAddress,
      obscuredText: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 50.0, bottom: 20.0, left: 40.0, right: 40.0),
                    child: Text(
                      "Muchas gracias por descarga la aplicación, si no te enviaron un link inteligente (porque aun no lo programo) entonces puedes pedir el código del evento e introducirlo en el siguiente espacio:",
                      softWrap: true,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(101, 77, 73, 1.0),
                        decoration: TextDecoration.none,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: "OpenSans",
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                    child: _codigoField,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 70, right: 70),
                    child: MKButton(
                      title: "Inicio",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      textColor: Colors.white,
                      onPressed: () {
                        _eventRegister(
                            codigo: _codigo.text,
                            userID: widget.firebaseUser.uid,
                            context: context);
                      },
                      splashColor: Colors.black12,
                      borderColor: Color.fromRGBO(212, 20, 15, 1.0),
                      borderWidth: 1,
                      color: Color.fromRGBO(252, 151, 9, 1.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 40, right: 40),
                    child: Text(
                      "Si descargaste esta aplicación por equivocación o curiosidad el evento al que me refiero es mi boda, soy un desarrollador de apps y se me hizo una buena idea una para invitaciones, gracias por la descarga, te dejo mi correo de contacto por si deseas información de mi trabajo, dejarme un comentario e enviarme una felicitación: katzuo.valdez@elbyte.com.mx, un saludo.",
                      softWrap: true,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(101, 77, 73, 1.0),
                        decoration: TextDecoration.none,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: "OpenSans",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 20, left: 100, right: 100),
                    child: MKButton(
                      title: "Salir",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      textColor: Colors.white,
                      onPressed: () {
                        _logOut();
                      },
                      splashColor: Colors.black12,
                      borderColor: Color.fromRGBO(212, 20, 15, 1.0),
                      borderWidth: 1,
                      color: Color.fromRGBO(252, 151, 9, 1.0),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  void _eventRegister(
      {String codigo, String userID, BuildContext context}) async {
    await Events.checkEvent(codigo).then((response) {
      if (response) {
        Events.subscribe(eventCode: codigo, userID: userID);
        _presentAlert(
            title: "Bienvenido", content: "Ahora eres nuestro invitado");
      } else {
        _presentAlert(
            title: "Error",
            content: "Por favor puedes checar el codigo del evento");
      }
    });
    await Events.subscribe(eventCode: codigo, userID: userID)
        .then((respuesta) => {print("listo")});
  }

  void _logOut() async {
    Auth.signOut();
  }

  void _presentAlert({String title, String content, VoidCallback onPressed}) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: <Widget>[
              MKButton(
                title: "OK",
                fontSize: 12,
                fontWeight: FontWeight.w100,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                splashColor: Colors.black12,
                borderColor: Color.fromRGBO(212, 20, 15, 1.0),
                borderWidth: 1,
                color: Color.fromRGBO(252, 151, 9, 1.0),
              )
            ],
          );
        });
  }
}
