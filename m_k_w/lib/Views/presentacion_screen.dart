import 'package:flutter/material.dart';
import 'package:m_k_w/Views/mk_flat_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 60.0),
            child: Icon(
              Icons.markunread_mailbox,
              color: Color.fromRGBO(255, 242, 154, 1.0),
              size: 125.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35.0, right: 15.0, left: 15.0),
            child: Text(
              "Tienes un mensaje sin leer!",
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(101, 77, 73, 1.0),
                decoration: TextDecoration.none,
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                fontFamily: "OpenSans",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "No, no es spam, tomate unos minutos para revisarlo.",
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 15.0,
                fontWeight: FontWeight.w300,
                fontFamily: "OpenSans",
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
            child: MKButton(
              title: "Inicia Sesion",
              fontSize: 18,
              fontWeight: FontWeight.w300,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).pushNamed("/signin");
              },
              splashColor: Color.fromRGBO(101, 77, 73, 1.0),
              borderColor: Color.fromRGBO(101, 77, 73, 1.0),
              borderWidth: 1,
              color: Color.fromRGBO(252, 151, 9, 1.0),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
            child: MKButton(
              title: "Registro",
              fontSize: 18,
              fontWeight: FontWeight.w300,
              textColor: Color.fromRGBO(101, 77, 73, 1.0),
              onPressed: () {
                Navigator.of(context).pushNamed("/signup");
              },
              splashColor: Color.fromRGBO(101, 77, 73, 1.0),
              borderColor: Color.fromRGBO(101, 77, 73, 1.0),
              borderWidth: 2,
            ),
          ),
        ],
      ),
    );
  }
}