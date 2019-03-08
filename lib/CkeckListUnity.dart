import 'package:flutter/material.dart';

class CheckListUnity extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return _CheckListUState();
  }

}

class _CheckListUState extends State<CheckListUnity>{


  bool _isChecked = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  bool _isChecked5 = false;
  bool _isChecked6 = false;
  bool _isChecked7 = false;
  var rating;

  void onChanged(bool value){
    setState(() {
      _isChecked = value;
    });
  }

  void onChangedValue2(bool value){
    setState(() {
      _isChecked2 = value;
    });
  }

  void onChangedValue3(bool value){
    setState(() {
      _isChecked3 = value;
    });
  }

  void onChangedValue4(bool value){
    setState(() {
      _isChecked4 = value;
    });
  }

  void onChangedValue5(bool value){
    setState(() {
      _isChecked5 = value;
    });
  }

  void onChangedValue6(bool value){
    setState(() {
      _isChecked6 = value;
    });
  }

  void onChangedValue7(bool value){
    setState(() {
      _isChecked7 = value;
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
              "Formato de Recepción de Vehículo",
              style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          Container(

            decoration: new BoxDecoration(

              border: Border.all(
                color: Colors.lightBlueAccent,
                width: 1.5,
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(5.0) //                 <--- border radius here
              ),
            ),

            child:  Column(
              children: <Widget>[

                Text(
                  "Estatus General",
                  style: TextStyle(
                      fontSize: 21.0,
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold
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
                        'Estado de la pintura',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: <Widget>[

                         Row(
                           children: <Widget>[
                             Text(
                               "Nueva",
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
                               "Regular",
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
                               "Desgaste",
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
                        'Estado de los Frenos',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: <Widget>[


                          Row(
                            children: <Widget>[
                              Text(
                                "Buen estado",
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
                                "  Mal estado",
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


          SizedBox(
            height: 10,
          ),



          Container(
            padding:
            EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
            decoration: BoxDecoration(
              //border: Border.all(color: Colors.grey, width: 1.0),
                color: Colors.black54,
                borderRadius: BorderRadius.circular(5.0)),
            child:  Text(
              "Gasolina",
              style: TextStyle(
                  fontSize: 21.0,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          Container(
            padding:
            EdgeInsets.symmetric(horizontal: 3.0, vertical: 2.0),
            decoration: BoxDecoration(
              //border: Border.all(color: Colors.grey, width: 1.0),
                color: Colors.black54,
                borderRadius: BorderRadius.circular(5.0)),
            child:  Text(
              "Estacionamiento",
              style: TextStyle(
                  fontSize: 21.0,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          Container(
            padding:
            EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
            decoration: BoxDecoration(
              //border: Border.all(color: Colors.grey, width: 1.0),
                color: Colors.black54,
                borderRadius: BorderRadius.circular(5.0)),
            child:  Text(
              "Accesorios",
              style: TextStyle(
                  fontSize: 21.0,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),


          SizedBox(
            height: 10,
          ),




          /*Row(
            children: <Widget>[
              Checkbox(
                value: _isChecked2,
                onChanged:(bool value){onChangedValue2(value);},
                activeColor: Colors.lightBlueAccent,
              ),
              Text(
                  'Campo dos has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),


            ],
          ),

          Row(
            children: <Widget>[
              Checkbox(
                value: _isChecked3,
                onChanged:(bool value){onChangedValue3(value);},
                activeColor: Colors.lightBlueAccent,
              ),
              Text(
                  'Campo tres has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),


            ],
          ),

          Row(
            children: <Widget>[
              Checkbox(
                value: _isChecked4,
                onChanged:(bool value){onChangedValue4(value);},
                activeColor: Colors.lightBlueAccent,
              ),
              Text(
                  'Campo cuatro has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),


            ],
          ),

          Row(
            children: <Widget>[
              Checkbox(
                value: _isChecked5,
                onChanged:(bool value){onChangedValue5(value);},
                activeColor: Colors.lightBlueAccent,
              ),
              Text(
                  'Campo cinco has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),


            ],
          ),

          Row(
            children: <Widget>[
              Checkbox(
                value: _isChecked6,
                onChanged:(bool value){onChangedValue6(value);},
                activeColor: Colors.lightBlueAccent,
                  ),
              Text(
                'Campo seis has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),

            ],
          ),


          Row(
            children: <Widget>[
              Checkbox(
                value: _isChecked7,
                onChanged:(bool value){onChangedValue7(value);},
                activeColor: Colors.lightBlueAccent,
              ),
              Text(
                'Campo siete has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),

            ],
          ),


          Row(
            children: <Widget>[
              Checkbox(
                value: _isChecked7,
                onChanged:(bool value){onChangedValue7(value);},
                activeColor: Colors.lightBlueAccent,
              ),
              Text(
                'Campo siete has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),

            ],
          ),

          Row(
            children: <Widget>[
              Checkbox(
                value: _isChecked7,
                onChanged:(bool value){onChangedValue7(value);},
                activeColor: Colors.lightBlueAccent,
              ),
              Text(
                'Campo siete has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),

            ],
          ),

          Row(
            children: <Widget>[
              Checkbox(
                value: _isChecked7,
                onChanged:(bool value){onChangedValue7(value);},
                activeColor: Colors.lightBlueAccent,
              ),
              Text(
                'Campo siete has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),

            ],
          ),


          Row(
            children: <Widget>[
              Checkbox(
                value: _isChecked7,
                onChanged:(bool value){onChangedValue7(value);},
                activeColor: Colors.lightBlueAccent,
              ),
              Text(
                'Campo siete has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),

            ],
          ),*/










        ],
      ),
    );

  }
}