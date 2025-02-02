import 'dart:async';
import 'package:app_editesp/VarGlobals.dart' as globals;
import 'package:app_editesp/pages/home.dart';
import 'package:app_editesp/pages/pass.dart';
import 'package:app_editesp/theme.dart'as Theme;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class HomePagePass extends StatefulWidget {
  @override
  LoginP createState() {
    return LoginP();
  }
}
class LoginP extends State<HomePagePass>{
  TextEditingController empleadoController =  TextEditingController();
  _callMe() async {
    // Android
    const uri = 'tel:+521 55 37 01 34 31';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      // iOS
      const uri = 'tel:521-55-19-18-99-54';
      if (await canLaunch(uri)) {
        await launch(uri);
      } else {
        throw 'Could not launch $uri';
      }
    }
  }
  var passF;
  var estado;
  var nombre;
  var pass;
  DocumentSnapshot snapshot;
  Future<void> nombreUsuario() async {
    snapshot = await Firestore.instance.collection('Usuarios').document(empleadoController.text).get();
    nombre = snapshot['Nombre'];
    pass = snapshot['Password'];
   print('nombress: $nombre');
    print('Pass: $pass');
    if (pass == null){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) => HomePage(id: empleadoController.text, nombre: nombre,),
        ),
      );
    }else if (pass != null){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) => SPass(id: empleadoController.text, nombre: nombre,),
        ),
      );
    }
  }
  @override
  void initState() {
    super.initState();
  }
  String id;
  @override
  Widget build(BuildContext context) {
    print(globals.isLoggedIn);
    id = empleadoController.text;
    return
      SingleChildScrollView (
        child: Container(
          color: Color(0xFF1D539B),
          child: Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child:  Image(
                      width: 250.0,
                      height: 165.0,
                      fit: BoxFit.fill,
                      image:  AssetImage('assets/ver ficacion2.png')
                  ),
                ),
              ),
              Container(

                child: Stack(
                  alignment: Alignment.topCenter,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Card(
                      elevation: 2.0,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                      child: Container(
                        width: 300.0,
                        height: 110.0,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                              child: TextFormField(
                                controller: empleadoController,
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Por favor ingrese su número de empleado';
                                  }
                                },
                                style: TextStyle(
                                    fontFamily: "WorkSansSemiBold",
                                    fontSize: 16.0,
                                    color: Colors.black),
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.account_box,
                                    color: Colors.black,
                                    size: 22.0,
                                  ),
                                  hintText: "No de empleado",
                                  hintStyle: TextStyle(
                                      fontFamily: "WorkSansSemiBold", fontSize: 17.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 200.0),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),

                        gradient:  LinearGradient(
                            colors: [
                              Theme.Colors.loginGradientEnd2,
                              Theme.Colors.loginGradientStart2
                            ],
                            begin: const FractionalOffset(0.2, 0.2),
                            end: const FractionalOffset(1.0, 1.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                      ),
                      child: MaterialButton(
                        highlightColor: Colors.transparent,
                        splashColor: Theme.Colors.loginGradientEnd2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            "Ingresar",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: "WorkSansBold"),
                          ),
                        ),
                        onPressed: () {
                          nombreUsuario();
                          print('nombre: $nombre');
                          if(empleadoController.text.isEmpty){
                            return showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return new AlertDialog(
                                    title: Text('Error'),
                                    content: Text ('Tu número de usuario es incorrecto'),
                                    contentPadding: EdgeInsets.all(10.0),
                                    actions: <Widget>[
                                      new FlatButton(
                                        child: Text('Aceptar'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      )
                                    ],
                                  );
                                });
                          }
                        },
                      ),
                    ),
                  ],

                ),

              ),
              SizedBox(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0xFF1D539B),
                  ),
                ),
                height: 175,
              ),
            ],
          ),
        ),
      );
  }
}