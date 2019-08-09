import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m_k_w/Controlles/auth_manager.dart';
import 'package:m_k_w/Controlles/validator.dart';
import 'package:m_k_w/Models/invitado.dart';
import 'package:m_k_w/Views/app_text_fields.dart';
import 'package:m_k_w/Views/mk_flat_button.dart';

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
      hint: "Contraseña",
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
                          top: 50.0, bottom: 20.0, left: 40.0, right: 40.0),
                      child: Text(
                        "Bienvenido",
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
                    Padding(padding: EdgeInsets.all(15.0),
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(255, 242, 154, 1.0),
                          child: Image(image: AssetImage("assets/default.png"),
                            height: 100,
                            width: 100,),
                          radius: 50.0,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 50.0, right: 50.0),
                      child: _emailField,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10.0, bottom: 30.0, left: 50.0, right: 50.0),
                      child: _passwordField,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 80.0),
                      child: MKButton(
                        title: "Inicio",
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        textColor: Colors.white,
                        onPressed: () {
                          _emailLogin(email: _email.text,
                              password: _password.text,
                              contest: context);
                        },
                        splashColor: Colors.black12,
                        borderColor: Color.fromRGBO(212, 20, 15, 1.0),
                        borderWidth: 1,
                        color: Color.fromRGBO(252, 151, 9, 1.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 80.0,
                      ),
                      child: MKButton(
                        title: "Facebook",
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        textColor: Colors.white,
                        onPressed: () {
                          _facebookLogin(context: context);
                        },
                        splashColor: Colors.black12,
                        borderColor: Color.fromRGBO(212, 20, 15, 1.0),
                        borderWidth: 0,
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

  void _facebookLogin({BuildContext context}) async {
    try {
      SystemChannels.textInput.invokeMethod('TextInput.hide');
      _changeBlackVisible();
      Auth.signInWithFacebok().then((uid) {
        Auth.getCurrentFirebaseUser().then((firebaseuser) {
          User user = new User(
              nombre: firebaseuser.displayName,
              userID: firebaseuser.uid,
              email: firebaseuser.email ?? '',
              profilePictureURL: firebaseuser.photoUrl ?? '',
              tipo: "invitado",
              boletos: 1,
              confirmado: false,
              notificame: false
          );
          Auth.addUser(user);
          Navigator.of(context).pop();
        });
      });
    } catch (e) {
      print("Error in facebook sign in: $e");
      String exception = Auth.getExceptionText(e);
      _showErrorAlert(
        title: "Fallo algo...",
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
