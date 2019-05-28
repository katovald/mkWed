import 'package:app_editesp/CameraW.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:app_editesp/pages/ChatPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:ui' as ui;
import 'package:flutter_signature_pad/flutter_signature_pad.dart';

class CheckListUnity extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return _CheckListUState();
  }

}

class MyItem {
  MyItem({ this.isExpanded: false,});

  bool isExpanded;

}
class _WatermarkPaint extends CustomPainter {
  final String price;
  final String watermark;

  _WatermarkPaint(this.price, this.watermark);

  @override
  void paint(ui.Canvas canvas, ui.Size size) {

  }

  @override
  bool shouldRepaint(_WatermarkPaint oldDelegate) {
    return oldDelegate != this;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is _WatermarkPaint && runtimeType == other.runtimeType && price == other.price && watermark == other.watermark;

  @override
  int get hashCode => price.hashCode ^ watermark.hashCode;
}
class _CheckListUState extends State<CheckListUnity>{
  List<MyItem> _items = <MyItem>[
    MyItem()
  ];
  List<MyItem> _items2 = <MyItem>[
    MyItem()
  ];
  List<MyItem> _items3 = <MyItem>[
    MyItem()
  ];
  List<MyItem> _items4 = <MyItem>[
    MyItem()
  ];
  ByteData _img = ByteData(0);
  var color = Colors.black;
  var strokeWidth = 2.0;
  final _sign = GlobalKey<SignatureState>();
  TextEditingController _TextController1 =   TextEditingController();
  TextEditingController _TextController2 =   TextEditingController();
  TextEditingController _TextController3 =   TextEditingController();
  TextEditingController _TextController4 =   TextEditingController();
  TextEditingController _TextController5 =   TextEditingController();
  TextEditingController _TextController6 =   TextEditingController();
  TextEditingController _TextController7 =   TextEditingController();
  bool _canShowButton = true;
  var _value1 = "Nuevo";
  var _value2 = "Nuevo";
  var _value3 = "Nuevo";
  var _value4 = "Nuevo";
  var _value5 = "Nuevo";
  var _value6 = "Nuevo";
  var _value7 = "Nuevo";
  var _value8 = "Nuevo";
  var _value9 = "Nuevo";
  var _value10 = "Nuevo";
  var _value11 = "Nuevo";
  var _value12 = "Nuevo";
  var _valueaceite = "A nivel";
  var _valuemanti = "A nivel";
  var _valuedireccion = "A nivel";
  var _valuefrenos = "A nivel";
  var _valueGasolina = "Tanque lleno";
  var now = DateTime.now();
  //String electrico, String numTarjeta, String saldoTarjeta,String horaCarga, String fondo, String numTicket,String total,

 void _recepcion() {
    //_sinTextController.clear();
    Firestore.instance.collection('Recepcion').add({
      'Gasolina inicial': _itemGasolina().value,
      'Sistema Eléctico': _TextController1.text,
      'No. Tarjeta de gasolina ': _TextController2.text,
      'Saldo de trajeta': _TextController3.text,
      'Hora de la carga': _TextController4.text,
      'Fondo de estacionamiento': _TextController5.text,
      'Número de ticket': _TextController6.text,
      'Total': _TextController7.text,
      'Cargador USB': _itemDown().value,
      'Tag': _itemDown2().value,
      'Guía_Roja': _itemDown3().value,
      'Lámpara': _itemDown4().value,
      'Paraguas': _itemDown5().value,
      'Manos_libes': _itemDown6().value,
      'Red': _itemDown7().value,
      'Extintor': _itemDown8().value,
      'Gato': _itemDown9().value,
      'Llave_de_cruz': _itemDown10().value,
      'Señalamientos': _itemDown11().value,
      'Kit_de_limpieza': _itemDown12().value,
      'Aceite': _itemaceite().value,
      'Anticongelante': _itemdmanti().value,
      'Líquido_de_dirección': _itemdireccion().value,
      'Líquido_de_frenos': _itemfrenos().value,
      'Hora': now,
    });
  }

  DropdownButton _itemGasolina() => DropdownButton<String>(
    value: _valueGasolina,
    onChanged: (String newValue) {
      setState(() {
        _valueGasolina = newValue;
      });
    },
    items: <String>['Tanque lleno', '3/4', 'Madio tanque', '1/4', 'Tanque vacio']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );

  //// MI LISTA </>
  DropdownButton _itemDown() =>  DropdownButton<String>(
    value: _value1,
    onChanged: (String newValue) {
      setState(() {
        _value1 = newValue;
      });
    },
    items: <String>['Nuevo', 'Buen estado', 'Usado', 'Mal','Roto', 'Desgastado', 'Caducado', 'Inservible','Obsoleto', 'Sin comprar', 'En proceso compra', 'Reposición','Solicitar cambio', 'Incompleto']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemDown2() => DropdownButton<String>(
    value: _value2,
    onChanged: (String newValue) {
      setState(() {
        _value2 = newValue;
      });
    },
    items: <String>['Nuevo', 'Buen estado', 'Usado', 'Mal','Roto', 'Desgastado', 'Caducado', 'Inservible','Obsoleto', 'Sin comprar', 'En proceso compra', 'Reposición','Solicitar cambio', 'Incompleto']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemDown3() => DropdownButton<String>(
    value: _value3,
    onChanged: (String newValue) {
      setState(() {
        _value3 = newValue;
      });
    },
    items: <String>['Nuevo', 'Buen estado', 'Usado', 'Mal','Roto', 'Desgastado', 'Caducado', 'Inservible','Obsoleto', 'Sin comprar', 'En proceso compra', 'Reposición','Solicitar cambio', 'Incompleto']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemDown4() => DropdownButton<String>(
    value: _value4,
    onChanged: (String newValue) {
      setState(() {
        _value4 = newValue;
      });
    },
    items: <String>['Nuevo', 'Buen estado', 'Usado', 'Mal','Roto', 'Desgastado', 'Caducado', 'Inservible','Obsoleto', 'Sin comprar', 'En proceso compra', 'Reposición','Solicitar cambio', 'Incompleto']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemDown5() => DropdownButton<String>(
    value: _value5,
    onChanged: (String newValue) {
      setState(() {
        _value5 = newValue;
      });
    },
    items: <String>['Nuevo', 'Buen estado', 'Usado', 'Mal','Roto', 'Desgastado', 'Caducado', 'Inservible','Obsoleto', 'Sin comprar', 'En proceso compra', 'Reposición','Solicitar cambio', 'Incompleto']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemDown6() => DropdownButton<String>(
    value: _value6,
    onChanged: (String newValue) {
      setState(() {
        _value6 = newValue;
      });
    },
    items: <String>['Nuevo', 'Buen estado', 'Usado', 'Mal','Roto', 'Desgastado', 'Caducado', 'Inservible','Obsoleto', 'Sin comprar', 'En proceso compra', 'Reposición','Solicitar cambio', 'Incompleto']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemDown7() => DropdownButton<String>(
    value: _value7,
    onChanged: (String newValue) {
      setState(() {
        _value7 = newValue;
      });
    },
    items: <String>['Nuevo', 'Buen estado', 'Usado', 'Mal','Roto', 'Desgastado', 'Caducado', 'Inservible','Obsoleto', 'Sin comprar', 'En proceso compra', 'Reposición','Solicitar cambio', 'Incompleto']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemDown8() => DropdownButton<String>(
    value: _value8,
    onChanged: (String newValue) {
      setState(() {
        _value8 = newValue;
      });
    },
    items: <String>['Nuevo', 'Buen estado', 'Usado', 'Mal','Roto', 'Desgastado', 'Caducado', 'Inservible','Obsoleto', 'Sin comprar', 'En proceso compra', 'Reposición','Solicitar cambio', 'Incompleto']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemDown9() => DropdownButton<String>(
    value: _value9,
    onChanged: (String newValue) {
      setState(() {
        _value9 = newValue;
      });
    },
    items: <String>['Nuevo', 'Buen estado', 'Usado', 'Mal','Roto', 'Desgastado', 'Caducado', 'Inservible','Obsoleto', 'Sin comprar', 'En proceso compra', 'Reposición','Solicitar cambio', 'Incompleto']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemDown10() => DropdownButton<String>(
    value: _value10,
    onChanged: (String newValue) {
      setState(() {
        _value1 = newValue;
      });
    },
    items: <String>['Nuevo', 'Buen estado', 'Usado', 'Mal','Roto', 'Desgastado', 'Caducado', 'Inservible','Obsoleto', 'Sin comprar', 'En proceso compra', 'Reposición','Solicitar cambio', 'Incompleto']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemDown11() => DropdownButton<String>(
    value: _value11,
    onChanged: (String newValue) {
      setState(() {
        _value11 = newValue;
      });
    },
    items: <String>['Nuevo', 'Buen estado', 'Usado', 'Mal','Roto', 'Desgastado', 'Caducado', 'Inservible','Obsoleto', 'Sin comprar', 'En proceso compra', 'Reposición','Solicitar cambio', 'Incompleto']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemDown12() => DropdownButton<String>(
    value: _value12,
    onChanged: (String newValue) {
      setState(() {
        _value12 = newValue;
      });
    },
    items: <String>['Nuevo', 'Buen estado', 'Usado', 'Mal','Roto', 'Desgastado', 'Caducado', 'Inservible','Obsoleto', 'Sin comprar', 'En proceso compra', 'Reposición','Solicitar cambio', 'Incompleto']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemaceite() => DropdownButton<String>(
    value: _valueaceite,
    onChanged: (String newValue) {
      setState(() {
        _valueaceite = newValue;
      });
    },
    items: <String>['A nivel', 'Medio', 'Bajo']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemdmanti() =>DropdownButton<String>(
    value: _valuemanti,
    onChanged: (String newValue) {
      setState(() {
        _valuemanti = newValue;
      });
    },
    items: <String>['A nivel', 'Medio', 'Bajo']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemdireccion() => DropdownButton<String>(
    value: _valuedireccion,
    onChanged: (String newValue) {
      setState(() {
        _valuedireccion = newValue;
      });
    },
    items: <String>['A nivel', 'Medio', 'Bajo']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemfrenos() =>DropdownButton<String>(
    value: _valuefrenos,
    onChanged: (String newValue) {
      setState(() {
        _valuefrenos= newValue;
      });
    },
    items: <String>['A nivel', 'Medio', 'Bajo']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  var rating;
  int selectedRadio;
  String selectedRadio2;
  int selectedRadio3;
  int selectedRadio4;
  int selectedRadio5;
  int selectedRadio6;
  int selectedRadio7;
  int selectedRadio8;
  int selectedRadio9;
  int selectedRadio10;
  int selectedRadio11;
  int selectedRadio12;
  int selectedRadio13;
  int selectedRadio14;
  int selectedRadio15;
  int selectedRadio16;
  int selectedRadio17;
  int selectedRadio18;
  int selectedRadio19;
  int selectedRadio20;
  int selectedRadio21;
  int selectedRadio22;
  int selectedRadio23;
  int selectedRadio24;
  int selectedRadio25;
  int selectedRadio26;
  int selectedRadio27;
  int selectedRadio28;
  int selectedRadio29;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadio2 = "Buen estado";
    selectedRadio3 = 0;
    selectedRadio4 = 0;
    selectedRadio5 = 0;
    selectedRadio6 = 0;
    selectedRadio7 = 0;
    selectedRadio8= 0;
    selectedRadio9 = 0;
    selectedRadio10 = 0;
    selectedRadio11 = 0;
    selectedRadio12 = 0;
    selectedRadio13 = 0;
    selectedRadio14 = 0;
    selectedRadio15 = 0;
    selectedRadio16 = 0;
    selectedRadio17 = 0;
    selectedRadio18 = 0;
    selectedRadio19 = 0;
    selectedRadio20= 0;
    selectedRadio21 = 0;
    selectedRadio22 = 0;
    selectedRadio23 = 0;
    selectedRadio24 = 0;
    selectedRadio25= 0;
    selectedRadio26 = 0;
    selectedRadio27 = 0;
    selectedRadio28 = 0;
    selectedRadio29 = 0;
  }
  setSelectedRadio (int val) {
    setState(() {
      selectedRadio = val;
    });
  }
  setSelectedRadio2 (String val) {
    setState(() {
      selectedRadio2 = val;
    });
  }
  setSelectedRadio3 (int val) {
    setState(() {
      selectedRadio3 = val;
    });
  }
  setSelectedRadio4 (int val) {
    setState(() {
      selectedRadio4 = val;
    });
  }
  setSelectedRadio5 (int val) {
    setState(() {
      selectedRadio5 = val;
    });
  }
  setSelectedRadio6 (int val) {
    setState(() {
      selectedRadio6 = val;
    });
  }
  setSelectedRadio7 (int val) {
    setState(() {
      selectedRadio7 = val;
    });
  }
  setSelectedRadio8 (int val) {
    setState(() {
      selectedRadio8 = val;
    });
  }
  setSelectedRadio9 (int val) {
    setState(() {
      selectedRadio9 = val;
    });
  }
  setSelectedRadio10 (int val) {
    setState(() {
      selectedRadio10 = val;
    });
  }
  setSelectedRadio11 (int val) {
    setState(() {
      selectedRadio11 = val;
    });
  }
  setSelectedRadio12 (int val) {
    setState(() {
      selectedRadio12 = val;
    });
  }
  setSelectedRadio13 (int val) {
    setState(() {
      selectedRadio13 = val;
    });
  }
  setSelectedRadio14 (int val) {
    setState(() {
      selectedRadio14 = val;
    });
  }
  setSelectedRadio15 (int val) {
    setState(() {
      selectedRadio15 = val;
    });
  }
  setSelectedRadio16 (int val) {
    setState(() {
      selectedRadio16 = val;
    });
  }
  setSelectedRadio17 (int val) {
    setState(() {
      selectedRadio17 = val;
    });
  }
  setSelectedRadio18 (int val) {
    setState(() {
      selectedRadio18 = val;
    });
  }
  setSelectedRadio19 (int val) {
    setState(() {
      selectedRadio19 = val;
    });
  }
  setSelectedRadio20 (int val) {
    setState(() {
      selectedRadio20 = val;
    });
  }
  setSelectedRadio21 (int val) {
    setState(() {
      selectedRadio21 = val;
    });
  }
  setSelectedRadio22 (int val) {
    setState(() {
      selectedRadio22 = val;
    });
  }
  setSelectedRadio23 (int val) {
    setState(() {
      selectedRadio23 = val;
    });
  }
  setSelectedRadio24 (int val) {
    setState(() {
      selectedRadio24 = val;
    });
  }
  setSelectedRadio25 (int val) {
    setState(() {
      selectedRadio25 = val;
    });
  }
  setSelectedRadio26 (int val) {
    setState(() {
      selectedRadio26 = val;
    });
  }
  setSelectedRadio27 (int val) {
    setState(() {
      selectedRadio27 = val;
    });
  }
  setSelectedRadio28 (int val) {
    setState(() {
      selectedRadio28 = val;
    });
  }
  setSelectedRadio29 (int val) {
    setState(() {
      selectedRadio29 = val;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Recepción de Vehículo",
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
      body: ListView(
          children: <Widget>[
            SizedBox(
                    height: 6,
                  ),
            ExpansionPanelList(

              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _items[index].isExpanded = !_items[index].isExpanded;
                });
              },
              children: _items.map((MyItem item) {
                return  ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Text(
                          "Estatus general",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        ),
                      ],
                    );
                  },
                  isExpanded: item.isExpanded,
                  body:
                  Container(

                    child:  Column(
                      children: <Widget>[
                        SizedBox(
                          height: 6,
                        ),

                        Container(
                          decoration: BoxDecoration(
                            //border: Border.all(color: Colors.grey, width: 1.0),

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Estado de la pintura',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),
                              ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Nueva",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
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
                                        "Regular",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
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

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Desgaste",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio(val);
                                        },
                                        value: 3,
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

                        Container(
                          decoration: BoxDecoration(
                            //border: Border.all(color: Colors.grey, width: 1.0),

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Estado de los Frenos',
                                   style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                            ),
                              ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[


                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Buen estado",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio2(val);
                                        },
                                        value: "Buen estado",
                                        groupValue: selectedRadio2,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Mal estado",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio2(val);
                                        },
                                        value: "Mal estado",
                                        groupValue: selectedRadio2,
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
                            height: 127.0,
                            decoration: BoxDecoration(
                              //border: Border.all(color: Colors.grey, width: 1.0),

                                color: Color(0xFFEAEAEA),
                                borderRadius: BorderRadius.circular(0.0)),
                            margin: EdgeInsets.only(left: 3.0, right: 3.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Sistema Eléctrico',
                                     style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),
                                ),

                                TextField(
                                  controller: _TextController1,
                                  maxLines: 3,
                                  cursorColor: Colors.black,
                                  cursorWidth: 7.0,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19.0
                                  ),
                                  decoration: InputDecoration(
                                    labelText: 'Llenar campo de texto',
                                    labelStyle: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xFF969696),
                                    fontWeight: FontWeight.w500
                                    ),
                                    fillColor: Colors.blueGrey,
                                    prefixIcon: const Icon(
                                        Icons.textsms,
                                        color: Colors.black
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'LLanta trasera izquierda',
                                   style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),
                              ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[


                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Bien",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio3(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio3,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "1/2 Vida",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio3(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio3,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "3/4 Vida" ,
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio3(val);
                                        },
                                        value: 3,
                                        groupValue: selectedRadio3,
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



                        Container(
                          decoration: BoxDecoration(
                            //border: Border.all(color: Colors.grey, width: 1.0),

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'LLanta trasera derecha',
                                  style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),
                              ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[


                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Bien",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio4(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio4,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "1/2 Vida",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio4(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio4,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "3/4 Vida" ,
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio4(val);
                                        },
                                        value: 3,
                                        groupValue: selectedRadio4,
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



                        Container(
                          decoration: BoxDecoration(
                            //border: Border.all(color: Colors.grey, width: 1.0),

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'LLanta delantera izquierda',
                                   style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),
                              ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Bien",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio5(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio5,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "1/2 Vida",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio5(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio5,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "3/4 Vida" ,
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio5(val);
                                        },
                                        value: 3,
                                        groupValue: selectedRadio5,
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



                        Container(
                          decoration: BoxDecoration(
                            //border: Border.all(color: Colors.grey, width: 1.0),

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'LLanta delantera derecha',
                                   style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),
                              ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[



                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Bien",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio6(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio6,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "1/2 Vida",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio6(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio6,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "3/4 Vida" ,
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio6(val);
                                        },
                                        value: 3,
                                        groupValue: selectedRadio6,
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



                        Container(
                          decoration: BoxDecoration(
                            //border: Border.all(color: Colors.grey, width: 1.0),

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'LLanta de refacción',
                                   style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),
                              ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[


                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Bien",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio7(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio7,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "1/2 Vida",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio7(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio7,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "3/4 Vida" ,
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio7(val);
                                        },
                                        value: 3,
                                        groupValue: selectedRadio7,
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
                          height: 10,
                        ),



                      ],
                    ),
                  ),
                );

              }).toList(),
            ),
            //AQUIIIIIIIIII
            SizedBox(
              height: 10,
            ),
            ExpansionPanelList(

              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _items2[index].isExpanded = !_items2[index].isExpanded;
                });
              },
              children: _items2.map((MyItem item) {
                return  ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Text(
                          "Gasolina",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        ),
                      ],
                    );
                  },
                  isExpanded: item.isExpanded,
                  body: Container(
//Diseño de la caja <>

                    child:  Column(
                      children: <Widget>[
//Diseño de la caja </>
//Separador<>
                        SizedBox(
                          height: 6,
                        ),
//Separador</>
                        Container(
                          decoration: BoxDecoration(
                            //border: Border.all(color: Colors.grey, width: 1.0),

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
//Tanque Gasolina Titulo<>
                              Text(
                                'Gasolina Inicial',
                               style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),
                              ),
//Tanque Gasolina Titulo</>
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[
//Opciones Tanque<>
// MENU
                                  Row(
                                    children: <Widget>[
                                      /*Radio(
                                  onChanged: (e){},
                                  value: 1,
                                  groupValue: 1,
                                ),*/
                                      _itemGasolina(),
                                    ],
                                  ),
//Opciones Tanque</>
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
//Tarjeta Gasolina Titulo<>
                              Text(
                                '¿Tarjeta de Gasolina?',
                                style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),
                              ),
//Tarjeta Gasolina Titulo</>
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[
//Opciones Tarjeta<>
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio8(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio8,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio8(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio8,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
//Opciones Tarjeta</>
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
//Cargo Gasolina Titulo<>
                              Text(
                                '¿Cargo Gasolina?',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                            ),
//Cargo Gasolina Titulo</>
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[
//Opciones Cargo<>
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio9(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio9,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio9(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio9,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
//Opciones Cargo</>
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 6,
                        ),

//Cuadros de Texto  <>
//Caja de comentarios <>
                        GestureDetector(
                          onTap:(){
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          child:Container(
                            height: 127.0,
                            decoration: BoxDecoration(
                              //border: Border.all(color: Colors.grey, width: 1.0),

                                color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                            margin: EdgeInsets.only(left: 3.0, right: 3.0),
                            child: Column(
                              children: <Widget>[
//Titulo
                                Text(
                                  'No. Tarjeta de Gasolina',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                  ),

                                TextField(
                                  controller: _TextController2,
                                  maxLines: 3, //Maximo de Lineas de Texto
                                  cursorColor: Colors.black,
                                  cursorWidth: 7.0,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19.0
                                  ),
//Descripcion & Estilos
                                  decoration: InputDecoration(
                                    labelText: 'Llenar campo de texto',
                                          labelStyle: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xFF969696),
                                    fontWeight: FontWeight.w500
                                    ),
                                    fillColor: Colors.black54,
                                    prefixIcon: const Icon(
                                        Icons.textsms,
                                        color: Colors.black
                                    ),
                                  ),
                                  onChanged:(String value){},
                                ),

                              ],
                            ),
                          ),
                        ),
//Cuadros de Texto  </>
//Caja de comentarios </>


                        SizedBox(
                          height: 6,
                        ),
//Cuadros de Texto <>
//Caja de comentarios <>

                        GestureDetector(
                          onTap:(){
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          child:Container(
                            height: 127.0,
                            decoration: BoxDecoration(
                              //border: Border.all(color: Colors.grey, width: 1.0),

                                color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                            margin: EdgeInsets.only(left: 3.0, right: 3.0),
                            child: Column(
                              children: <Widget>[
//Titulo
                                Text(
                                  'Saldo de Tarjeta',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                  ),

                                TextField(
                                  controller: _TextController3,
                                  maxLines: 3, //Maximo de Lineas de Texto
                                  cursorColor: Colors.black,
                                  cursorWidth: 7.0,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19.0
                                  ),
//Descripcion & Estilos
                                  decoration: InputDecoration(
                                    labelText: 'Llenar campo de texto',
                                 labelStyle: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xFF969696),
                                    fontWeight: FontWeight.w500
                                    ),
                                    fillColor: Colors.black54,
                                    prefixIcon: const Icon(
                                        Icons.textsms,
                                        color: Colors.black
                                    ),
                                  ),
                                  onChanged:(String value){},
                                ),

                              ],
                            ),
                          ),
                        ),
//Cuadros de Texto  </>
//Caja de comentarios </>

                        SizedBox(
                          height: 6,
                        ),

//Cuadros de Texto  <>
//Caja de comentarios </>
                        GestureDetector(
                          onTap:(){
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          child:Container(
                            height: 127.0,
                            decoration: BoxDecoration(
                              //border: Border.all(color: Colors.grey, width: 1.0),

                                color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                            margin: EdgeInsets.only(left: 3.0, right: 3.0),
                            child: Column(
                              children: <Widget>[
//Titulo
                                Text(
                                  'Hora de la Carga',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                  ),

                                TextField(
                                  controller: _TextController4,
                                  maxLines: 3,  //Maximo de Lineas de Texto
                                  cursorColor: Colors.black,
                                  cursorWidth: 7.0,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19.0
                                  ),
//Descripcion & Estilos
                                  decoration: InputDecoration(
                                    labelText: 'Llenar campo de texto',
                                      labelStyle: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xFF969696),
                                    fontWeight: FontWeight.w500
                                    ),
                                    fillColor: Colors.black54,
                                    prefixIcon: const Icon(
                                        Icons.textsms,
                                        color: Colors.black
                                    ),
                                  ),
                                  onChanged:(String value){},
                                ),

                              ],
                            ),
                          ),
                        ),
//Cuadros de Texto </>
//Caja de comentarios </>

                        SizedBox(
                          height: 6,
                        ),

                        Container(
                          decoration: BoxDecoration(
                            //border: Border.all(color: Colors.grey, width: 1.0),

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
//Info Titulo<>
                              Text(
                                '¿Es correcta la informacion?',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),
//Info Titulo</>
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[
//Opciones Info<>
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio10(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio10,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio10(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio10,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
//Opciones Info</>
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

                );

              }).toList(),
            ),
            //AQUIIIIIIIIII

            SizedBox(
              height: 10,
            ),
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _items3[index].isExpanded = !_items3[index].isExpanded;
                });
              },
              children: _items3.map((MyItem item) {
                return  ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                       Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Text(
                          "Estacionamiento",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        ),
                      ],
                    );
                  },
                  isExpanded: item.isExpanded,
                  body:
                  Container(

                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 6,
                        ),

                        Container(
                          decoration: BoxDecoration(
                            //border: Border.all(color: Colors.grey, width: 1.0),

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '¿Cuenta con fondo de estacionamientos?',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio11(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio11,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio11(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio11,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  /*   Row(
                               children: <Widget>[
                                 Text(
                                   "Desgaste",
                                   style: TextStyle(color: Colors.black, fontSize: 13.0),
                                 ),
                                 Radio(
                                   onChanged: (e){},
                                   value: 1,
                                   groupValue: 1,
                                 ),
                               ],
                             ),*/



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
                            height: 127.0,
                            decoration: BoxDecoration(
                              //border: Border.all(color: Colors.grey, width: 1.0),

                                color: Color(0xFFEAEAEA),
                                borderRadius: BorderRadius.circular(5.0)),
                            margin: EdgeInsets.only(left: 3.0, right: 3.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  '¿Cuánto?',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                  ),

                                TextField(
                                  controller: _TextController5,
                                  maxLines: 3,
                                  cursorColor: Colors.black,
                                  cursorWidth: 7.0,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19.0
                                  ),
                                  decoration: InputDecoration(
                                    labelText: 'Llenar campo de texto',
                                       labelStyle: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xFF969696),
                                    fontWeight: FontWeight.w500
                                    ),
                                    fillColor: Colors.black54,
                                    prefixIcon: const Icon(
                                        Icons.textsms,
                                        color: Colors.black
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


                        GestureDetector(
                          onTap:(){
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          child:Container(
                            height: 127.0,
                            decoration: BoxDecoration(
                              //border: Border.all(color: Colors.grey, width: 1.0),

                                color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                            margin: EdgeInsets.only(left: 3.0, right: 3.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Número de ticket de estacionamiento',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                  ),

                                TextField(
                                  controller: _TextController6,
                                  maxLines: 3,
                                  cursorColor: Colors.black,
                                  cursorWidth: 7.0,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19.0
                                  ),
                                  decoration: InputDecoration(
                                    labelText: 'Llenar campo de texto',
                                       labelStyle: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xFF969696),
                                    fontWeight: FontWeight.w500
                                    ),
                                    fillColor: Colors.black54,
                                    prefixIcon: const Icon(
                                        Icons.textsms,
                                        color: Colors.black
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



                        GestureDetector(
                          onTap:(){
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          child:Container(
                            height: 127.0,
                            decoration: BoxDecoration(
                              //border: Border.all(color: Colors.grey, width: 1.0),

                                color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                            margin: EdgeInsets.only(left: 3.0, right: 3.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Total en pesos',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                  ),

                                TextField(
                                  controller: _TextController7,
                                  maxLines: 3,
                                  cursorColor: Colors.black,
                                  cursorWidth: 7.0,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19.0
                                  ),
                                  decoration: InputDecoration(
                                    labelText: 'Llenar campo de texto',
                                     labelStyle: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xFF969696),
                                    fontWeight: FontWeight.w500
                                    ),
                                    fillColor: Colors.black54,
                                    prefixIcon: const Icon(
                                        Icons.textsms,
                                        color: Colors.black
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '¿Es correcta la información?',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[


                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio12(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio12,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio12(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio12,
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
                          height: 10,
                        ),



                      ],
                    ),
                  ),
                );

              }).toList(),
            ),

            /* Container(
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
            ),*/

            SizedBox(
              height: 10,
            ),
            ExpansionPanelList(

              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _items4[index].isExpanded = !_items4[index].isExpanded;
                });
              },
              children: _items4.map((MyItem item) {
                return  ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                       Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Text(
                          "Accesorios",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        ),
                      ],
                    );
                  },
                  isExpanded: item.isExpanded,
                  body:
                  Container(

                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 6,
                        ),

                        Container(
                          decoration: BoxDecoration(
                            //border: Border.all(color: Colors.grey, width: 1.0),

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Cargador USB',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio13(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio13,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio13(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio13,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      /*Radio(
                                  onChanged: (e){},
                                  value: 1,
                                  groupValue: 1,
                                ),*/
                                      _itemDown(),
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Tag',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[


                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio14(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio14,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio14(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio14,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      _itemDown2(),
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
                        Container(
                          decoration: BoxDecoration(
                            //border: Border.all(color: Colors.grey, width: 1.0),

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Guía roja',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio15(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio15,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio15(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio15,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      _itemDown3(),
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Lámpara',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio16(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio16,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio16(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio16,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      _itemDown4(),
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Paraguas',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio17(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio17,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio17(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio17,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      _itemDown5(),
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Manos libres',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio18(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio18,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio18(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio18,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      _itemDown6(),
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Red',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio19(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio19,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio19(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio19,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      _itemDown7(),
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Extintor',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio20(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio20,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio20(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio20,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      _itemDown8(),
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Gato',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio21(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio21,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio21(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio21,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      _itemDown9(),
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Llave de cruz',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio22(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio22,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio22(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio22,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      _itemDown10(),
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Señalamientos',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio23(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio23,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio23(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio23,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      _itemDown11(),
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Kit de limpieza',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio24(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio24,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio24(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio24,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      _itemDown12(),
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Aceite',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio25(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio25,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio25(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio25,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      _itemaceite(),
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Anticongelante',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio26(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio26,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio26(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio26,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      _itemdmanti(),
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Líquido de dirección',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio27(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio27,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio27(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio27,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      _itemdireccion(),
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Líquido de frenos',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio28(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio28,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio28(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio28,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      /*Radio(
                                  onChanged: (e){},
                                  value: 1,
                                  groupValue: 1,
                                ),*/
                                      _itemfrenos(),
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

                              color: Color(0xFFEAEAEA),
                              borderRadius: BorderRadius.circular(8.0)),
                          margin: EdgeInsets.only(left: 3.0, right: 3.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '¿Es correcta la información?',
                              style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              ),                                ),

                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: <Widget>[

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Si",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio29(val);
                                        },
                                        value: 1,
                                        groupValue: selectedRadio29,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "No",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio29(val);
                                        },
                                        value: 2,
                                        groupValue: selectedRadio29,
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
                      ],
                    ),
                  ),
                );

              }).toList(),
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Foto frontal piloto-cofre ',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                SizedBox(
                  height: 6,
                ),
                CameraW(),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Foto frontal copiloto-cofre ',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                SizedBox(
                  height: 6,
                ),
                CameraW(),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Foto trasera piloto-cajuela ',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                SizedBox(
                  height: 6,
                ),
                CameraW(),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Foto trasera copiloto-cajuela ',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                SizedBox(
                  height: 6,
                ),
                CameraW(),
                _img.buffer.lengthInBytes == 0 ? Container(decoration: BoxDecoration(color: Colors.white),) : LimitedBox(maxHeight: 84.0, child: Image.memory(_img.buffer.asUint8List())),
                _canShowButton
                    ?
                RaisedButton(
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {

                        return AlertDialog(
                          title: Text("Firma electrónica"),
                          content: Container(
                            height: 150,
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Signature(
                                color: color,
                                key: _sign,
                                onSign: () {
                                  final sign = _sign.currentState;
                                  debugPrint('${sign.points.length} points in the signature');
                                },
                                backgroundPainter: _WatermarkPaint("2.0", "2.0"),
                                strokeWidth: strokeWidth,
                              ),
                            ),
                            color: Colors.black12,
                          ),

                          actions: <Widget>[
                            FlatButton(
                              child:  Text("Salvar"),
                              onPressed: ()  async {
                                final sign = _sign.currentState;
                                //retrieve image data, do whatever you want with it (send to server, save locally...)
                                final image = await sign.getData();
                                var data = await image.toByteData(format: ui.ImageByteFormat.png);
                                sign.clear();
                                final encoded = base64.encode(data.buffer.asUint8List());
                                setState(() {
                                  _img = data;
                                });
                                debugPrint("onPressed " + encoded);
                                Navigator.of(context).pop();
                                setState(() => _canShowButton = !_canShowButton);
                              },

                            ),

                            //_img.buffer.lengthInBytes == 0 ? Container(decoration: BoxDecoration(color: Colors.white),) : LimitedBox(maxHeight: 200.0, child: Image.memory(_img.buffer.asUint8List())),
                            FlatButton(
                              child:  Text("Borrar"),
                              onPressed: () {
                                final sign = _sign.currentState;
                                sign.clear();
                                setState(() {
                                  _img = ByteData(0);
                                });
                                debugPrint("cleared");
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  textColor: Colors.white,
                  color: Color(0xFF2350A6),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Firma electrónica",
                  ),

                )
                    : SizedBox(),
                /* RaisedButton(
                  onPressed: (){
                    _recepcion();
                  },
                  textColor: Colors.white,
                  color: Colors.red,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Envíar",
                  ),
                ),*/
              ],
            ),
          ],
        ),
      floatingActionButton:  FloatingActionButton(
          backgroundColor: Color(0xFF2350A6),
          child: Icon(
            Icons.verified_user,
            color: Colors.white,),
          onPressed: () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/item', (Route<dynamic> route) => false);
            _recepcion();
          }

      ),

    );
  }
}
