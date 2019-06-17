import 'dart:async';
import 'package:app_editesp/Formularios/CkeckListUnity.dart';
import 'package:app_editesp/VarGlobals.dart' as globals;
import 'package:app_editesp/theme.dart'as Theme;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:cloud_firestore/cloud_firestore.dart';
class Pass extends StatefulWidget {
  final String id;
  Pass({Key key, this.id}) : super (key: key);
  @override
  NewP createState() {
    return NewP();
  }
}
class NewP extends State<Pass>{
  TextEditingController passwordController =  TextEditingController();
  TextEditingController confirmarController =  TextEditingController();
  Future _contra() async{
    final contra = passwordController.text;
    final key = encrypt.Key.fromLength(64);
    final iv = encrypt.IV.fromLength(8);
    final encrypter = encrypt.Encrypter(encrypt.Salsa20(key));

    final encrypted = encrypter.encrypt(contra, iv: iv);
    final decrypted = encrypter.decrypt(encrypted, iv: iv);

    print(decrypted);
    print(encrypted.base64);
    if(passwordController.text == confirmarController.text && passwordController.text.isNotEmpty && confirmarController.text.isNotEmpty){
      Firestore.instance.collection('Usuarios').document('169861').updateData({
        'Password': encrypted.base64,
      });
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) => CheckListUnity(id: id),
        ),
      );
    }else{
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
  final FocusNode myFocusNodePassword2 = FocusNode();
  bool _obscureTextLogin = true;
  bool _obscureTextLogin2 = true;
  @override
  void dispose() {
    myFocusNodePassword.dispose();
    myFocusNodePassword2.dispose();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
  }
  String id;
  @override
  Widget build(BuildContext context) {
    print(globals.isLoggedIn);
    //id = empleadoController.text;
    return
      Scaffold(
         body: SingleChildScrollView (
            child: Container(
              color: Color(0xFF1D539B),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 50.0),
                      child:  Text ("""¡Bienvenido!
Por favor proporciona una contraseña""",
                        style: TextStyle(
                          fontSize: 35.0,
                          color: Colors.white,
                        ),
                      )

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
                            height: 220.0,
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
                                          //FontAwesomeIcons.eye,
                                          size: 15.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                                  child: TextField(
                                    focusNode: myFocusNodePassword2,
                                    controller: confirmarController,
                                    obscureText: _obscureTextLogin2,
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                        fontFamily: "WorkSansSemiBold",
                                        fontSize: 16.0,
                                        color: Colors.black),
                                    decoration: InputDecoration(
                                      //border: InputBorder.none,
                                      icon: Icon(
                                        Icons.done,
                                        size: 22.0,
                                        color: Colors.black,
                                      ),
                                      hintText: "Confrmar contraseña",
                                      hintStyle: TextStyle(
                                          fontFamily: "WorkSansSemiBold", fontSize: 17.0
                                      ),
                                      suffixIcon: GestureDetector(
                                        onTap:  _toggleLogin2,
                                        child: Icon(
                                          Icons.visibility,
                                          //FontAwesomeIcons.eye,
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
                                "Crear",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontFamily: "WorkSansBold"),
                              ),
                            ),
                            onPressed: () {
                              _contra();
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
                    height: 190,
                  ),
                ],
              ),
            ),
          ),
      );
  }
  void _toggleLogin() {
    setState(() {
      _obscureTextLogin = !_obscureTextLogin;
    });
  }
    void _toggleLogin2() {
      setState(() {
        _obscureTextLogin2 = !_obscureTextLogin2;
      });
    }

}