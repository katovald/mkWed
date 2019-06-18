import 'dart:async';
import 'package:app_editesp/Formularios/CkeckListUnity.dart';
import 'package:app_editesp/VarGlobals.dart' as globals;
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:app_editesp/pages/ItemList.dart';
import 'package:app_editesp/theme.dart'as Theme;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class SPass extends StatefulWidget {
  final String id;
  final String nombre;
 SPass({Key key, this.id, this.nombre}) : super (key: key);
  @override
  LoginP createState() {
    return LoginP();
  }
}
class LoginP extends State<SPass>{
  TextEditingController passwordController =  TextEditingController();
  var passF;
  var estado;
  mensaje(){
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text ('¡Bienvenido ${widget.nombre}!'),
            actions: <Widget>[
              FlatButton(
                child: Text('Cerrar'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
  Future login() async{
    final contra = passwordController.text;
    final key = encrypt.Key.fromLength(64);
    final iv = encrypt.IV.fromLength(8);
    final encrypter = encrypt.Encrypter(encrypt.Salsa20(key));
    final encrypted = encrypter.encrypt(contra, iv: iv);
    DocumentSnapshot snapshot;
    snapshot= await Firestore.instance.collection('Usuarios').document(widget.id).get();
    passF = snapshot['Password'];
    estado = snapshot['Estatus'];
    print('Pass: $passF');
    if(encrypted.base64 == passF && estado == 'Inactivo'){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) => CheckListUnity(id: widget.id, nombre: widget.nombre,)
        ),
      );
      mensaje();
    }else if(encrypted.base64 == passF && estado == 'Activo'){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) => ItemList(id: widget.id, nombre: widget.nombre,),
        ),
      );
      mensaje();
    } else{
      return showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text ('Tu contraseña es incorrecta'),
              contentPadding: EdgeInsets.all(10.0),
              actions: <Widget>[
                FlatButton(
                  child: Text('Aceptar'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }

  }
  final FocusNode myFocusNodePassword = FocusNode();
  bool _obscureTextLogin = true;
  @override
  void dispose() {
    myFocusNodePassword.dispose();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print(globals.isLoggedIn);
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
                              child: TextField(
                                focusNode: myFocusNodePassword,
                                controller: passwordController,
                                obscureText: _obscureTextLogin,
                                keyboardType: TextInputType.text,
                                style: TextStyle(
                                    fontFamily: "WorkSansSemiBold",
                                    fontSize: 16.0,
                                    color: Colors.black),
                                decoration: InputDecoration(
                                  //border: InputBorder.none,
                                  icon: Icon(
                                    Icons.lock,
                                    size: 22.0,
                                    color: Colors.black,
                                  ),
                                  hintText: "Contraseña",
                                  hintStyle: TextStyle(
                                      fontFamily: "WorkSansSemiBold", fontSize: 17.0
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: _toggleLogin,
                                    child: Icon(
                                      Icons.visibility,
                                      size: 15.0,
                                      color: Colors.black,
                                    ),
                                  ),
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
                          login();
                          print('nombre: $widget.nombre');
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
  void _toggleLogin() {
    setState(() {
      _obscureTextLogin = !_obscureTextLogin;
    });
  }
}