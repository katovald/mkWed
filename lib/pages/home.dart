import 'package:app_editesp/BackW.dart';
import 'package:app_editesp/pages/CheckOne.dart';
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

    return new Scaffold(
      body: Stack(
        children: <Widget>[
          BackW(),
          Container(
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
                                  color: Colors.lightBlueAccent, width: 3.5,
                                ),
                              )
                          ), keyboardType: TextInputType.emailAddress,
                          autocorrect: false, onChanged:(String value){},
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
                                  color: Colors.lightBlueAccent, width: 3.7,
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
                          "Forgot your Password?  Recover here",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            decoration: TextDecoration.underline,
                          ),),
                        onPressed: (){},
                      ),

                      ButtonTheme(
                          child: FlatButton(
                            child: Image.asset('assets/login.png', width:170.0 , height: 50.0),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => CheckListOne(),
                              ),
                            ),
                          )
                      ),

                    ],
                  ),
                ),
              )
          ),


        ],
      ),
    );


  }
}