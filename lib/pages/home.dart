import 'dart:async';
import 'package:app_editesp/VarGlobals.dart' as globals;
import 'package:app_editesp/pages/ItemList.dart';
import 'package:app_editesp/pages/password.dart';
import 'package:app_editesp/theme.dart'as Theme;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class HomePage extends StatefulWidget {
  final String id;
  final String nombre;
  HomePage({Key key, this.id, this.nombre}) : super (key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
  //final Function main;
 // HomePage(this.main);
}
class MyAppState extends State<HomePage>{
  String phoneNo;
  String smsCode;
  String verificationId;
  var telefono;
  var Estado;
  var nombre;
  DocumentSnapshot snapshot;
  Future<void> verifyPhone() async {
   snapshot= await Firestore.instance.collection('Usuarios').document(widget.id).get();
    telefono = snapshot['Telefono'];
    Estado = snapshot['Estatus'];
    nombre = snapshot['Nombre'];
    print('Tel: $telefono');
    print('Estado: $Estado');
    if(phoneController.text == telefono){
      final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
        this.verificationId = verId;
        print('Time out');
      };

      final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResend]) {
        this.verificationId = verId;
        smsCodeDialog(context).then((value) {
          print('Signed in');
        });
      };

      final PhoneVerificationCompleted verifiedSuccess = (FirebaseUser user) {
        print('verified');
        if(Estado == 'Inactivo' || Estado == null){
          Navigator.of(context).pop();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (BuildContext context) => Pass(id: widget.id, nombre: nombre,),
            ),
          );
        }else if(Estado == 'Activo'){
          Navigator.of(context).pop();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (BuildContext context) => ItemList(id: widget.id, nombre: nombre,),
            ),
          );
        }

      };

      final PhoneVerificationFailed veriFailed = (AuthException exception) {
        print('${exception.message}');
      };

      await FirebaseAuth.instance.verifyPhoneNumber(
          phoneNumber: this.phoneNo,
          codeAutoRetrievalTimeout: autoRetrieve,
          codeSent: smsCodeSent,
          timeout: const Duration(seconds: 5),
          verificationCompleted: verifiedSuccess,
          verificationFailed: veriFailed);
    }else{
      return showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return new AlertDialog(
              title: Text('Error'),
              content: Text ('Tu número de empleado o de teléfono son incorrectos'),
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

  }
  Future<bool> smsCodeDialog(BuildContext context) {
      return showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return new AlertDialog(
              title: Text('Ingresa tu código de verificación'),
              content: TextField(
                onChanged: (value) {
                  this.smsCode = value;
                },
              ),
              contentPadding: EdgeInsets.all(10.0),
              actions: <Widget>[
                new FlatButton(
                  child: Text('Aceptar'),
                  onPressed: () {
                    FirebaseAuth.instance.currentUser().then((user) {
                      if (user != null) {
                        Navigator.of(context).pushReplacementNamed('/check1');
                        _Signin();
                        Navigator.of(context).pop();
                      } else {
                        Navigator.of(context).pop();
                      }
                    });
                  },
                )
              ],
            );
          });
  }
  Future<String> _Signin() async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    final AuthCredential credential = PhoneAuthProvider.getCredential(
      verificationId: verificationId,
      smsCode: smsCode,
    );
    final FirebaseUser user = await _auth.signInWithCredential(credential);
    final FirebaseUser currentUser = await _auth.currentUser();
    assert(user.uid == currentUser.uid);
    return 'signInWithPhoneNumber succeeded: $user';
  }
  TextEditingController phoneController =  TextEditingController();
 @override
  void dispose() {
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
      //widget.main();
   /* FirebaseAuth.instance.currentUser().then((user) {
      if (user != null) {
        Navigator.of(context).pushReplacementNamed('/check1');
      } else {
        print('No sesión');
      }
    });*/
  }
  @override
  Widget build(BuildContext context) {
    print(globals.isLoggedIn);
    print('Tel: $telefono');
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
                              controller: phoneController,
                              keyboardType: TextInputType.phone,
                              onChanged: (value) {
                                this.phoneNo = '+52$value';
                              },
                              style: TextStyle(
                                  fontFamily: "WorkSansSemiBold",
                                  fontSize: 16.0,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                //border: InputBorder.none,
                                icon: Icon(
                                  Icons.phone,
                                  size: 22.0,
                                  color: Colors.black,
                                ),
                                hintText: "No de teléfono",
                                hintStyle: TextStyle(
                               fontFamily: "WorkSansSemiBold", fontSize: 17.0
                               ),
                              /*  suffixIcon: GestureDetector(
                                onTap: _toggleLogin,
                                  child: Icon(
                                    Icons.visibility,
                                    //FontAwesomeIcons.eye,
                                    size: 15.0,
                                    color: Colors.black,
                                  ),
                                ),*/
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
                        verifyPhone();
                        if(phoneController.text.isEmpty){
                          return showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return new AlertDialog(
                                  title: Text('Error'),
                                  content: Text ('Tu número de empleado o de teléfono son incorrectos'),
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