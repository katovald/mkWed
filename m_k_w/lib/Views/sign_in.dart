import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:m_k_w/Controlles/auth_manager.dart';
import 'package:m_k_w/Controlles/validator.dart';
import 'package:m_k_w/Models/invitado.dart';
import 'package:m_k_w/Views/app_text_fields.dart';

class SignInScreen extends StatefulWidget {
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
  MKTextField _emailField;
  MKTextField _passwordField;
  bool _blackVisible = false;
  VoidCallback onBackPress;

  @override
  void initState() {
    super.initState();

    onBackPress = () {
      Navigator.of(context).pop();
    };

    _emailField = new MKTextField(
      baseColor: Colors.grey,
      borderColor: Colors.grey[400],
      errorColor: Colors.red,
      controller: _email,
      hint: "Direccion de correo",
      inputType: TextInputType.emailAddress,
      validator: Validator.validateEmail,
      obscuredText: false,
    );

    _passwordField = new MKTextField(
      baseColor: Colors.grey,
      borderColor: Colors.grey[400],
      errorColor: Colors.red,
      controller: _password,
      hint: "Password",
      inputType: TextInputType.text,
      validator: Validator.validatePassword,
      obscuredText: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                          top: 100.0, bottom: 20.0, left: 40.0, right: 40.0),
                      child: Text(
                        "Bienvenido",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(212, 20, 15, 1.0),
                          decoration: TextDecoration.none,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                          fontFamily: "OpenSans",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 30.0, bottom: 10.0, left: 50.0, right: 50.0),
                      child: _emailField,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 30.0, bottom: 30.0, left: 50.0, right: 50.0),
                      child: _passwordField,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 100.0),
                      child: FlatButton(
                        child: Text(
                          "Inicio",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        onPressed: () {
                          _emailLogin(
                              email: _email.text,
                              password: _password.text,
                              contest: context);
                        },
                        color: Color.fromRGBO(212, 20, 15, 1.0),
                        splashColor: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 100.0,
                      ),
                      child: FlatButton(
                        onPressed: () {
                          _googleLogin(context: context);
                        },
                        child: Text(
                          "Google",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        splashColor: Colors.black12,
                        color: Color.fromRGBO(212, 20, 15, 1.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 100.0),
                      child: FlatButton(
                        onPressed: () {
                          _facebookLogin(context: context);
                        },
                        child: Text(
                          "Facebook",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        splashColor: Colors.black12,
                        color: Color.fromRGBO(59, 89, 152, 1.0),
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
                  duration: Duration(microseconds: 400),
                  curve: Curves.ease,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black54,
                  ),
                ),
              ),
            )
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

  void _emailLogin(
      {String email, String password, BuildContext contest}) async {
    if (Validator.validateEmail(email) &&
        Validator.validatePassword(password)) {
      try {
        SystemChannels.textInput.invokeMethod('TextInput.hide');
        _changeBlackVisible();
        await Auth.signIn(email, password)
            .then((uid) => Navigator.of(context).pop());
      } catch (e) {
        print("Error: ${e}");
        String exception = Auth.getExceptionText(e);
        _showErrorAlert(
          title: "Error",
          content: exception,
          onPressed: _changeBlackVisible,
        );
      }
    }
  }

  void _googleLogin({BuildContext context}) async {
    try {
      SystemChannels.textInput.invokeMethod('TextInput.hide');
      _changeBlackVisible();

    } catch (e) {}
  }

  void _facebookLogin({BuildContext context}) async {
    try {
      SystemChannels.textInput.invokeMethod('TextInput.hide');
      _changeBlackVisible();
      FacebookLogin facebookLogin = new FacebookLogin();
      FacebookLoginResult result = await facebookLogin
          .logInWithReadPermissions(['email', 'public_profile']);
      switch (result.status) {
        case FacebookLoginStatus.loggedIn:
          Auth.signInWithFacebok(result.accessToken.token).then((uid) {
            Auth.getCurrentFirebaseUser().then((firebaseuser) {
              User user = new User(
                nombre: firebaseuser.displayName,
                userID: firebaseuser.uid,
                email: firebaseuser.email ?? '',
                profilePictureURL: firebaseuser.photoUrl ?? '',
              );
              Auth.addUser(user);
              print(User);
              Navigator.of(context).pop();
            });
          });
          break;
        case FacebookLoginStatus.cancelledByUser:
        case FacebookLoginStatus.error:
          _changeBlackVisible();
      }
    } catch (e) {
      print("Error in facebook sign in: $e");
      String exception = Auth.getExceptionText(e);
      _showErrorAlert(
        title: "Login failed",
        content: exception,
        onPressed: _changeBlackVisible,
      );
    }
  }

  void _showErrorAlert({String title, String content, VoidCallback onPressed}) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            FlatButton(
              onPressed: onPressed,
            )
          ],
        );
      },
    );
  }
}
