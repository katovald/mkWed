import 'package:app_editesp/VarGlobals.dart' as globals;
import 'package:app_editesp/pages/CheckOne.dart';
import 'package:app_editesp/theme.dart'as Theme;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart' as prefix0;
class HomePage extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}
class MyAppState extends State<HomePage>{

  final TextEditingController _singleTextFieldController = TextEditingController();
 TextEditingController loginPasswordController =  TextEditingController();

  void onPressed(){
    print("Button pressed");
  }

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

   void _showAlertCall() {
   
    AlertDialog dialog = new AlertDialog(
         title: Text("Recuperar Contraseña"),
         content:  Text("Te pondras en contacto con tu lider de area para que se te asigne una nueva contraseña, ¿Deseas continuar?"),
         backgroundColor: Color(0xFFF4F4F4),
       actions: <Widget>[
                                    FlatButton(
                                      child:  Text("Si"),
                                    
                                    onPressed: (){_callMe();},
                                      
                                    ),

                                    FlatButton(
                                      child:  Text("No"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
    );

    showDialog(
        context: context,
        child: dialog
    );
    ///////////////////////////////////////////////////////////

  }
  
  
final FocusNode myFocusNodePassword = FocusNode();
bool _obscureTextLogin = true;
 @override
  void dispose() {
    myFocusNodePassword.dispose();
    
   
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print(globals.isLoggedIn);
    //RETORNAMOS un CONTAINER con un CHILD que es un SCAFFOLD, hacemos esto...
    //...para que al aparecer el teclado no cambie de tamaño la imagen de fondo
    return  
    SingleChildScrollView (
         child: Container(
           color: Color(0xFF1D539B),
           child: Column(  
             children: <Widget>[
               Container(
            padding: prefix0.EdgeInsets.symmetric(vertical: 210),
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
                            child: TextFormField(

                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Por favor ingrese su número de cliente';
                                }
                              },
                              style: TextStyle(
                                  fontFamily: "WorkSansSemiBold",
                                  fontSize: 16.0,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                //border: InputBorder.none,
                                icon: Icon(
                                  Icons.account_box,
                                  //FontAwesomeIcons.user,
                                  color: Colors.black,
                                  size: 22.0,
                                ),
                                hintText: "Usuario",
                                hintStyle: TextStyle(
                                    fontFamily: "WorkSansSemiBold", fontSize: 17.0),
                              ),
                            ),
                          ),
                         /* Container(
                            width: 250.0,
                            height: 1.0,
                            color: Colors.grey[400],
                          ),*/
                          Padding(
                            padding: EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                            child: TextFormField(
                               focusNode: myFocusNodePassword,
                              controller: loginPasswordController,
                              obscureText: _obscureTextLogin,
                              style: TextStyle(
                                  fontFamily: "WorkSansSemiBold",
                                  fontSize: 16.0,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                //border: InputBorder.none,
                                icon: Icon(
                                  Icons.lock,
                                  //FontAwesomeIcons.lock,
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
                        //Navigator.pushNamed(context, '/second');
                       Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CheckListOne()),
                        );
                        //Navigator.pushNamedAndRemoveUntil(context, '/second', (_) => false);
            
                         },
                    ),
                  ),
               Container (
               child: Padding(
                padding: EdgeInsets.only(top:250),
                child: FlatButton(
                    onPressed: (){
                    _showAlertCall();
                  },
                    child: Text(
                      "Recuperar Contraseña",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontSize: 16.0,
                          fontFamily: "WorkSansMedium"),
                    )),
              ),
              ),
                ],
              ),
             
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