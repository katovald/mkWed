import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Regalos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Text(
                "Tenemos mesa de regalos en:",
                style: TextStyle(
                  color: Color.fromRGBO(101, 77, 73, 1.0),
                  decoration: TextDecoration.none,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "OpenSans",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset("assets/liverpool.jpg"),
                  height: 100,
                  width: 150,
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      icon: Icon(Icons.explore),
                      onPressed: () => {_launchLiverpool()}),
                  height: 100,
                  width: 100,
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Row(
              children: <Widget>[
                Container(
                  padding:
                      const EdgeInsets.only(left: 25.0, top: 5.0, bottom: 5.0),
                  child: Image.asset("assets/sears.png"),
                  height: 50,
                  width: 100,
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      icon: Icon(Icons.explore),
                      onPressed: () => {_launchLiverpool()}),
                  height: 100,
                  width: 100,
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Text(
                "O en la fiesta habrá unos cerditos como estos puedes colocar una donacion para nosotros, te lo agradeceremos.",
                style: TextStyle(
                  color: Color.fromRGBO(101, 77, 73, 1.0),
                  decoration: TextDecoration.none,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: "OpenSans",
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Center(
            child: Image.asset("assets/alcancias.jpg"),
          ),
        ],
      ),
    );
  }

  _launchLiverpool() async {
    const url =
        'https://mesaderegalos.liverpool.com.mx/milistaderegalos/50218006';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo';
    }
  }
}
