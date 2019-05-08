import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class formulario_Tareas extends StatefulWidget {
  @override
  _formulario_TareasState createState() => _formulario_TareasState();
}

class _formulario_TareasState  extends State<formulario_Tareas>{
  var _value1 = "1";
  DropdownButton _itemDown() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Nuevo",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _value1 = value;
      });
    },

    value: _value1,
    elevation: 2,

    style: TextStyle(
      color: Colors.greenAccent,
      fontSize: 13.0,
    ),
  );

  bool _isChecked = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  bool _isChecked5 = false;
  bool _isChecked6 = false;
  bool _isChecked7 = false;
  var rating;

  int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }
  setSelectedRadio (int val) {
    setState(() {
      selectedRadio = val;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Expanded(

      child: ListView(
        children: <Widget>[

          Container(
            padding:
            EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
            decoration: BoxDecoration(
              //border: Border.all(color: Colors.grey, width: 1.0),
                color: Colors.black54,
                borderRadius: BorderRadius.circular(5.0)),
            child:  Text(
              "Checklist verificación",
              style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          Container(

            decoration: BoxDecoration(
              color: Colors.white30,

              border: Border.all(
                color: Color(0xFFD5D5D5),
                width: 1.5,
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(0.0) //                 <--- border radius here
              ),
            ),

            child:  Column(
              children: <Widget>[
                SizedBox(
                  height: 6,
                ),

                Container(
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.grey, width: 1.0),
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Observaciones',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Text(
                                "Si",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (val){
                                  setSelectedRadio(val);
                                },
                                value: 1,
                                groupValue: selectedRadio,
                                activeColor: Color(0xFF2350A6),
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                "No",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (val){
                                  setSelectedRadio(val);
                                },
                                value: 2,
                                groupValue: selectedRadio,
                                activeColor: Color(0xFF2350A6),
                              ),

                            ],
                          ),

                        ],
                      ),
                      TextField(
                        enabled: false,
                        maxLines: 3,
                        cursorColor: Colors.white,
                        cursorWidth: 7.0,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.0
                        ),
                        decoration: InputDecoration(
                          labelText: 'Llenar campo de texto',
                          labelStyle: TextStyle(
                              color: Color(0xFF00DCFF),
                              fontWeight: FontWeight.w100
                          ),
                          fillColor: Colors.blueGrey,
                          prefixIcon: const Icon(
                            Icons.drive_eta,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                        onChanged:(String value){},
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 6,
                ),

                Container(
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.grey, width: 1.0),
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Cortinas(s) entrada de clientes',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Text(
                                "Aplica",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (val){
                                  setSelectedRadio(val);
                                },
                                value: 1,
                                groupValue: selectedRadio,
                                activeColor: Color(0xFF2350A6),
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                "No aplica",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (val){
                                  setSelectedRadio(val);
                                },
                                value: 2,
                                groupValue: selectedRadio,
                                activeColor: Color(0xFF2350A6),
                              ),

                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),




                SizedBox(
                  height: 6,
                ),


                GestureDetector(
                  onTap:(){
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child:Container(
                    height: 170.0,
                    decoration: BoxDecoration(
                      //border: Border.all(color: Colors.grey, width: 1.0),
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(5.0)),
                    margin: EdgeInsets.only(left: 3.0, right: 3.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Sistema Eléctrico',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),

                        TextField(
                          maxLines: 3,
                          cursorColor: Colors.white,
                          cursorWidth: 7.0,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0
                          ),
                          decoration: InputDecoration(
                            labelText: 'Llenar campo de texto',
                            labelStyle: TextStyle(
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.bold
                            ),
                            fillColor: Colors.black54,
                            prefixIcon: const Icon(
                              Icons.drive_eta,
                              color: Colors.lightBlueAccent,
                            ),
                          ),
                          onChanged:(String value){},
                        ),

                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 6,
                ),


                Container(
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.grey, width: 1.0),
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'LLanta trasera izquierda',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: <Widget>[


                          Row(
                            children: <Widget>[
                              Text(
                                "Bien",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                "1/2 Vida",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                "3/4 Vida" ,
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),





                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 6,
                ),



                Container(
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.grey, width: 1.0),
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'LLanta trasera derecha',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: <Widget>[


                          Row(
                            children: <Widget>[
                              Text(
                                "Bien",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                "1/2 Vida",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                "3/4 Vida" ,
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),





                        ],
                      ),
                    ],
                  ),
                ),


                SizedBox(
                  height: 6,
                ),



                Container(
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.grey, width: 1.0),
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'LLanta delantera izquierda',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Row(
                            children: <Widget>[
                              Text(
                                "Bien",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                "1/2 Vida",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                "3/4 Vida" ,
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),





                        ],
                      ),
                    ],
                  ),
                ),


                SizedBox(
                  height: 6,
                ),



                Container(
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.grey, width: 1.0),
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'LLanta delantera derecha',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: <Widget>[



                          Row(
                            children: <Widget>[
                              Text(
                                "Bien",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                "1/2 Vida",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                "3/4 Vida" ,
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),




                        ],
                      ),
                    ],
                  ),
                ),


                SizedBox(
                  height: 6,
                ),



                Container(
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.grey, width: 1.0),
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'LLanta de refacción',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: <Widget>[


                          Row(
                            children: <Widget>[
                              Text(
                                "Bien",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                "1/2 Vida",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                "3/4 Vida" ,
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),




                        ],
                      ),
                    ],
                  ),
                ),


                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
