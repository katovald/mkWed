import 'dart:core';

import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:m_k_w/Controlles/auth_manager.dart';
import 'package:m_k_w/Controlles/validator.dart';
import 'package:m_k_w/Models/invitado.dart';
import 'package:m_k_w/Views/app_text_fields.dart';
import 'package:m_k_w/Views/mk_alert_dialog.dart';
import 'package:m_k_w/Views/mk_flat_button.dart';

class SignUpScreen extends StatefulWidget {
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _fullname = new TextEditingController();
  final TextEditingController _number = new TextEditingController();
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
  final TextEditingController _retypepassword = new TextEditingController();
  MKTextField _nameField;
  MKTextField _phoneField;
  MKTextField _emailField;
  MKTextField _passwordField;
  MKTextField _retypepasswordField;
  bool _blackVisible = false;
  VoidCallback onBackPress;

  @override
  void initState() {
    super.initState();

    onBackPress = () {
      Navigator.of(context).pop();
    };

    _nameField = new MKTextField(
      baseColor: Colors.grey,
      borderColor: Colors.grey[400],
      errorColor: Colors.red,
      controller: _fullname,
      hint: "Nombre",
      validator: Validator.validateName,
      obscuredText: false,
    );
    _phoneField = new MKTextField(
      baseColor: Colors.grey,
      borderColor: Colors.grey[400],
      errorColor: Colors.red,
      controller: _number,
      hint: "Telefono",
      validator: Validator.validateNumber,
      inputType: TextInputType.number,
      obscuredText: false,
    );
    _emailField = new MKTextField(
      baseColor: Colors.grey,
      borderColor: Colors.grey[400],
      errorColor: Colors.red,
      controller: _email,
      hint: "Correo",
      inputType: TextInputType.emailAddress,
      validator: Validator.validateEmail,
      obscuredText: false,
    );
    _passwordField = MKTextField(
      baseColor: Colors.grey,
      borderColor: Colors.grey[400],
      errorColor: Colors.red,
      controller: _password,
      obscuredText: true,
      hint: "Contraseña",
      validator: Validator.validatePassword,
    );
    _retypepasswordField = MKTextField(
      baseColor: Colors.grey,
      borderColor: Colors.grey[400],
      errorColor: Colors.red,
      controller: _retypepassword,
      obscuredText: true,
      hint: "Repite tu contraseña",
      validator: Validator.validatePassword,
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onBackPress,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Stack(
              alignment: Alignment.topLeft,
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 60.0, bottom: 10.0, left: 20.0, right: 20.0),
                      child: Text(
                        "Regístrate con nosotros, te pediremos el código del evento al que fuiste invitado.",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(101, 77, 73, 1.0),
                          decoration: TextDecoration.none,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          fontFamily: "OpenSans",
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                      child: _nameField,
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                      child: _phoneField,
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                      child: _emailField,
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                      child: _passwordField,
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                      child: _retypepasswordField,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25.0, horizontal: 40.0),
                      child: MKButton(
                        title: "Registro",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        textColor: Colors.white,
                        onPressed: () {
                          if(_password.text == _retypepassword.text) {
                            _signUp(
                                fullname: _fullname.text,
                                email: _email.text,
                                number: _number.text,
                                password: _password.text);
                          }else{
                            _showErrorAlert(
                              title: "Error en datos",
                              content: "Tus contraseñas no son iguales",
                              onPressed: () {},
                            );
                          }
                        },
                        splashColor: Colors.black12,
                        borderColor: Color.fromRGBO(59, 89, 152, 1.0),
                        borderWidth: 0,
                        color: Color.fromRGBO(252, 151, 9, 1.0),
                      ),
                    ),
                  ],
                ),
                SafeArea(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: onBackPress,
                  ),
                ),
              ],
            ),
            Offstage(
              offstage: !_blackVisible,
              child: GestureDetector(
                onTap: () {},
                child: AnimatedOpacity(
                  opacity: _blackVisible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 400),
                  curve: Curves.ease,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _changeBlackVisible() {
    setState(() {
      _blackVisible = !_blackVisible;
    });
  }

  void _signUp(
      {String fullname,
        String number,
        String email,
        String password,
        BuildContext context}) async {
    if (Validator.validateName(fullname) &&
        Validator.validateEmail(email) &&
        Validator.validateNumber(number) &&
        Validator.validatePassword(password)) {
      try {
        SystemChannels.textInput.invokeMethod('TextInput.hide');
        _changeBlackVisible();
        await Auth.signUp(email, password).then((uID) {
          Auth.addUser(new User(
              userID: uID,
              email: email,
              nombre: fullname,
              profilePictureURL: '',
              tipo: "invitado",
              boletos: 1,
              confirmado: false,
              notificame: false
          ));
          onBackPress();
        });
      } catch (e) {
        print("Error in sign up: $e");
        String exception = Auth.getExceptionText(e);
        _showErrorAlert(
          title: "Fallo el inicio de sesion",
          content: exception,
          onPressed: _changeBlackVisible,
        );
      }
    }
  }

  void _showErrorAlert({String title, String content, VoidCallback onPressed}) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return MKAlertDialog(
          content: content,
          title: title,
          onPressed: onPressed,
        );
      },
    );
  }
}