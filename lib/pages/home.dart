import 'package:app_editesp/VarGlobals.dart' as globals;
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}
class MyAppState extends State<HomePage>{

  final TextEditingController _singleTextFieldController = TextEditingController();

  void onPressed(){
    print("Button pressed");
  }

  @override
  Widget build(BuildContext context) {
    print(globals.isLoggedIn);
    //RETORNAMOS un CONTAINER con un CHILD que es un SCAFFOLD, hacemos esto...
    //...para que al aparecer el teclado no cambie de tamaño la imagen de fondo
    return new Container(

      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/pantalla-inicio.png'),
          )
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onTap:(){
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Container(
              padding: EdgeInsets.all(23.0),
              child: Center(
                child: SingleChildScrollView(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Theme(
                        data: new ThemeData(
                          primaryColor: Colors.greenAccent,
                          primaryColorDark: Colors.greenAccent,
                        ),
                        child: TextField(
                          cursorColor: Colors.white,
                          cursorWidth: 10.0,
                          autofocus: false,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0
                          ),
                          decoration: InputDecoration(
                              labelText: 'Username',
                              labelStyle: TextStyle(
                                  color: Colors.greenAccent,
                                  fontWeight: FontWeight.bold
                              ),
                              fillColor: Colors.black54,
                              filled: true,
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.lightBlueAccent,
                              ),
                              enabledBorder: new OutlineInputBorder(
                                borderSide: new BorderSide(
                                  color: Colors.lightBlueAccent, width: 2.5,
                                ),
                              )
                          ),
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          onChanged:(String value){},
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      Theme(
                        data: new ThemeData(
                          primaryColor: Colors.greenAccent,
                          primaryColorDark: Colors.red,
                        ),
                        child:  TextField(
                          cursorColor: Colors.white,
                          cursorWidth: 10.0,
                          autofocus: false,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0
                          ),
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Colors.greenAccent,
                                  fontWeight: FontWeight.bold
                              ),
                              fillColor: Colors.black54,
                              filled: true,
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.lightBlueAccent,
                              ),
                              enabledBorder: new OutlineInputBorder(
                                borderSide: new BorderSide(
                                  color: Colors.lightBlueAccent, width: 2.5,
                                ),
                              )
                          ),
                          obscureText: true,
                          onChanged:(String value){},
                        ),
                      ),

                      SizedBox(
                        height: 7,
                      ),

                      FlatButton(
                        child:Text(
                          "¿Olvidaste tu Password?  Recupéralo",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            decoration: TextDecoration.underline,
                          ),),
                        onPressed: (){
                          print("VARIABLE GLOBAL:");
                          print(globals.isLoggedIn );
                        },
                      ),

                      ButtonTheme(
                          child: FlatButton(
                            child: Image.asset('assets/login.png', width:170.0 , height: 50.0),
                            onPressed: () {
                              globals.isLoggedIn = true;
                              print("VARIABLE GLOBAL:");
                              print(globals.isLoggedIn );
                              Navigator.pushNamed(context, '/check1');
                            },
                            ),
                          ),


                    ],
                  ),
                ),
              )
          ),
        )
      ),
    );

  }
}