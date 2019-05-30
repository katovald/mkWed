import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_editesp/pages/ChatPage.dart';
import 'package:flutter/material.dart';

class reporte_Siniestros extends StatefulWidget {
  @override
  _reporte_SiniestrosState createState() => _reporte_SiniestrosState();
}

class _reporte_SiniestrosState extends State<reporte_Siniestros> {
  var _value1 = "Accidente de transito";
  TextEditingController _sinTextController =   TextEditingController();
  String _numero = '169861';
  String _latitud = '19.415269';
  String _longitud = '-99.136779';
  var now = DateTime.now();
  // ignore: non_constant_identifier_names
  void _siniestro(String Comentario) {
    _sinTextController.clear();
    Firestore.instance.collection('siniestros').add({
      'Número de empleado': _numero,
      'Punto': '($_latitud, $_longitud)',
      'Siniestro': _itemDown().value,
      'Comentario': Comentario,
      'Hora': now,
    });
  }
  DropdownButton _itemDown() =>
      DropdownButton<String>(
        value: _value1,
        onChanged: (String newValue) {
          setState(() {
           _value1 = newValue;
          });
        },
        items: <String>['Accidente de transito', 'Averia mecánica', 'Pinchadura de llantas', 'Robo']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        })
            .toList(),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Reporte de siniestros",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontFamily: "Sabritas",
          ),
        ),
        bottom: PreferredSize(
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ChatPage(),
              ),
            ),
            child: Container(
              color: Color(0xFFEAEAEA),
              constraints: BoxConstraints.expand(height: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 16),
                    child: Text(
                      "Mensajes",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 5),
                    child: Icon(
                      Icons.chat,
                      color: Color(0xFF1D539B),
                    ),
                  ),
                ],
              ),
            ),
          ),
          preferredSize: Size(50, 50),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF1D539B),
      ),
      body:
      Center(

       child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Expanded(
               child: ListView(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Align(
                      alignment: Alignment.topRight,
                      child: _itemDown(),
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      child: TextField(
                        controller: _sinTextController,
                        maxLines: 4,
                        cursorColor: Colors.black,

                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Comentario",
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w100
                          ),
                          fillColor: Colors.blueGrey,

                        ),
                        onChanged:(String value){},
                      ),
                    ),


                  ],

                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 15.0),
                child: RaisedButton(
                  onPressed: () =>{
                  Navigator.of(context).pushNamedAndRemoveUntil('/item', ModalRoute.withName('/check1')),
                    _siniestro(_sinTextController.text),
                  },
                  textColor: Colors.white,
                  color: Color(0xFF2350A6),
                  child: Text(
                    "Enviar",
                  ),
                ),
              ),
            ],
          ),

        ),
      ),

    );
  }
}
