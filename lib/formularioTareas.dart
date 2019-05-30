import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_editesp/product_manager.dart';
import 'package:app_editesp/CameraW.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_signature_pad/flutter_signature_pad.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class formulario_Tareas extends StatefulWidget {

  @override
  _formulario_TareasState createState() => _formulario_TareasState( );
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

class _formulario_TareasState  extends State<formulario_Tareas>{
  final Evento evento;
  _formulario_TareasState({Key key, this.evento});
  List<MyItem> _items = <MyItem>[
    MyItem()
  ];
  ByteData _img = ByteData(0);
  var color = Colors.black;
  var strokeWidth = 2.0;
  final _sign = GlobalKey<SignatureState>();
  bool _canShowButton = true;
  var rating;

  String selectedRadio;
  String selectedRadio2;
  String selectedRadio3;
  String selectedRadio4;
  String selectedRadio5;
  String selectedRadio6;
  String selectedRadio7;
  String selectedRadio8;
  String selectedRadio9;
  String selectedRadio10;
  String selectedRadio11;
  String selectedRadio12;
  String selectedRadio13;
  String selectedRadio14;
  String selectedRadio15;
  String selectedRadio16;
  String selectedRadio17;
  String selectedRadio18;
  String selectedRadio19;
  @override
  void initState() {
    super.initState();
    selectedRadio = "No";
    selectedRadio2 = "Aplica";
    selectedRadio3 = "Aplica";
    selectedRadio4 = "Aplica";
    selectedRadio5 = "Aplica";
    selectedRadio6 = "Aplica";
    selectedRadio7 = "Aplica";
    selectedRadio8= "Aplica";
    selectedRadio9 = "Aplica";
    selectedRadio10 = "Aplica";
    selectedRadio11 = "Aplica";
    selectedRadio12 = "Aplica";
    selectedRadio13 = "Aplica";
    selectedRadio14 = "Aplica";
    selectedRadio15 = "Si";
    selectedRadio16 = "Si";
    selectedRadio17 = "Si";
    selectedRadio18 = "Si";
    selectedRadio19 = "Si";
  }
  setSelectedRadio (String val) {
    setState(() {
      selectedRadio = val;
      _isTextFieldVisible = !_isTextFieldVisible;
    });
  }
  setSelectedRadio2 (String val) {
    setState(() {
      selectedRadio2 = val;
    });
  }
  setSelectedRadio3 (String val) {
    setState(() {
      selectedRadio3 = val;
    });
  }
  setSelectedRadio4 (String val) {
    setState(() {
      selectedRadio4 = val;
    });
  }
  setSelectedRadio5 (String val) {
    setState(() {
      selectedRadio5 = val;
    });
  }
  setSelectedRadio6 (String val) {
    setState(() {
      selectedRadio6 = val;
    });
  }
  setSelectedRadio7 (String val) {
    setState(() {
      selectedRadio7 = val;
    });
  }
  setSelectedRadio8 (String val) {
    setState(() {
      selectedRadio8 = val;
    });
  }
  setSelectedRadio9 (String val) {
    setState(() {
      selectedRadio9 = val;
    });
  }
  setSelectedRadio10 (String val) {
    setState(() {
      selectedRadio10 = val;
    });
  }
  setSelectedRadio11 (String val) {
    setState(() {
      selectedRadio11 = val;
    });
  }
  setSelectedRadio12 (String val) {
    setState(() {
      selectedRadio12 = val;
    });
  }
  setSelectedRadio13 (String val) {
    setState(() {
      selectedRadio13 = val;
    });
  }
  setSelectedRadio14 (String val) {
    setState(() {
      selectedRadio14 = val;
    });
  }
  setSelectedRadio15 (String val) {
    setState(() {
      selectedRadio15 = val;
    });
  }
  setSelectedRadio16 (String val) {
    setState(() {
      selectedRadio16 = val;
    });
  }
  setSelectedRadio17 (String val) {
    setState(() {
      selectedRadio17 = val;
    });
  }
  setSelectedRadio18 (String val) {
    setState(() {
      selectedRadio18 = val;
    });
  }
  setSelectedRadio19 (String val) {
    setState(() {
      selectedRadio19 = val;
    });
  }
  TextEditingController _textFieldController = TextEditingController();
  TextEditingController _totalCortinaClientes = TextEditingController();
  TextEditingController _observacionCortinaClientes = TextEditingController();
  TextEditingController _totalCortinasMercancia = TextEditingController();
  TextEditingController _observacionCortinasMercancia = TextEditingController();
  TextEditingController _totalPuerta = TextEditingController();
  TextEditingController _observacionPuerta = TextEditingController();
  TextEditingController _totalChapa = TextEditingController();
  TextEditingController _observacionChapa = TextEditingController();
  TextEditingController _totalCamara = TextEditingController();
  TextEditingController _observacionCamara = TextEditingController();
  TextEditingController _totalCandado = TextEditingController();
  TextEditingController _observacionCandado = TextEditingController();
  TextEditingController _totalPuertaCristal = TextEditingController();
  TextEditingController _observacionPuertaCristal = TextEditingController();
  TextEditingController _totalFachadaCristal = TextEditingController();
  TextEditingController _observacionFachadaCristal = TextEditingController();
  TextEditingController _totalMuro = TextEditingController();
  TextEditingController _observacionMuro = TextEditingController();
  TextEditingController _totalSirena = TextEditingController();
  TextEditingController _observacionSirena = TextEditingController();
  TextEditingController _totalPlanta = TextEditingController();
  TextEditingController _observacionPlanta = TextEditingController();
  TextEditingController _totalVentana = TextEditingController();
  TextEditingController _observacionVentana = TextEditingController();
  TextEditingController _totalPorton = TextEditingController();
  TextEditingController _observacionPorton = TextEditingController();
  TextEditingController _totalReja = TextEditingController();
  TextEditingController _observacionReja = TextEditingController();
  TextEditingController _ruidos = TextEditingController();
  TextEditingController _luz = TextEditingController();
  TextEditingController _perimetro = TextEditingController();
  TextEditingController _nombreEntrevista = TextEditingController();
  TextEditingController _puesto = TextEditingController();
  var now = DateTime.now();
  File imageFile;
  File imageFile2;
  File imageFile3;
  File imageFirma;
  String imageUrl;
  String imageUrl2;
  String imageUrl3;
  String urlFirma;
  bool isLoading;

  Future getImage() async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.camera);

    if (imageFile != null) {
      setState(() {
        isLoading = true;
      });
      uploadFile();
    }
  }
  Future getImage2() async {
    imageFile2 = await ImagePicker.pickImage(source: ImageSource.camera);

    if (imageFile2 != null) {
      setState(() {
        isLoading = true;
      });
      uploadFile2();
    }
  }
  Future getImage3() async {
    imageFile3 = await ImagePicker.pickImage(source: ImageSource.camera);

    if (imageFile3 != null) {
      setState(() {
        isLoading = true;
      });
      uploadFile3();
    }
  }
  Future uploadFile() async {
    String fileName = DateTime.now().millisecondsSinceEpoch.toString();
    StorageReference reference = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask uploadTask = reference.putFile(imageFile);
    StorageTaskSnapshot storageTaskSnapshot = await uploadTask.onComplete;
    storageTaskSnapshot.ref.getDownloadURL().then((downloadUrl) {
      imageUrl = downloadUrl;
      setState(() {
        isLoading = false;
        //onSendMessage(imageUrl, 1);
      });
    }, onError: (err) {
      setState(() {
        isLoading = false;
      });
      //Fluttertoast.showToast(msg: 'Este archivo no es una imagen');
    });
  }
  Future uploadFile2() async {
    String fileName = DateTime.now().millisecondsSinceEpoch.toString();
    StorageReference reference = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask uploadTask = reference.putFile(imageFile2);
    StorageTaskSnapshot storageTaskSnapshot = await uploadTask.onComplete;
    storageTaskSnapshot.ref.getDownloadURL().then((downloadUrl) {
      imageUrl2 = downloadUrl;
      setState(() {
        isLoading = false;
        //onSendMessage(imageUrl, 1);
      });
    }, onError: (err) {
      setState(() {
        isLoading = false;
      });
      //Fluttertoast.showToast(msg: 'Este archivo no es una imagen');
    });
  }
  Future uploadFile3() async {
    String fileName = DateTime.now().millisecondsSinceEpoch.toString();
    StorageReference reference = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask uploadTask = reference.putFile(imageFile3);
    StorageTaskSnapshot storageTaskSnapshot = await uploadTask.onComplete;
    storageTaskSnapshot.ref.getDownloadURL().then((downloadUrl) {
      imageUrl3 = downloadUrl;
      setState(() {
        isLoading = false;
        //onSendMessage(imageUrl, 1);
      });
    }, onError: (err) {
      setState(() {
        isLoading = false;
      });
      //Fluttertoast.showToast(msg: 'Este archivo no es una imagen');
    });
  }
  Future uploadFirma() async {
    String fileName = DateTime.now().millisecondsSinceEpoch.toString();
    StorageReference reference = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask uploadTask = reference.putData(_img.buffer.asUint8List());
    StorageTaskSnapshot storageTaskSnapshot = await uploadTask.onComplete;
    storageTaskSnapshot.ref.getDownloadURL().then((downloadUrl) {
      urlFirma = downloadUrl;
      setState(() {
        isLoading = false;
        //onSendMessage(imageUrl, 1);
      });
    }, onError: (err) {
      setState(() {
        isLoading = false;
      });
      //Fluttertoast.showToast(msg: 'Este archivo no es una imagen');
    });
  }
  void _tarea() {
    //_sinTextController.clear();
    Firestore.instance.collection('Checklist').add({
      'Observaciones': selectedRadio,
      'Cortina_Clientes': selectedRadio2,
      'Cortina_Mercancia': selectedRadio3,
      'Puerta': selectedRadio4,
      'Chapa': selectedRadio5,
      'Camara': selectedRadio6,
      'Candado': selectedRadio7,
      'Puerta_cristal': selectedRadio8,
      'Fachada_cristal': selectedRadio9,
      'Muro': selectedRadio10,
      'Sirena': selectedRadio11,
      'Planta': selectedRadio12,
      'Ventana': selectedRadio13,
      'Porton': selectedRadio14,
      'Reja': selectedRadio15,
      'Ruidos': selectedRadio16,
      'Luz': selectedRadio17,
      'Perímetro': selectedRadio18,
      'Entrevista': selectedRadio19,
      'Observaciones_contenido': _textFieldController.text,
      'Cortina_cliente_total': _totalCortinaClientes.text,
      'Cortina_cliente_observacion':_observacionCortinaClientes.text,
      'Cortina_mercancia_total': _totalCortinasMercancia.text,
      'Cortina_mercancia_observacion':_observacionCortinasMercancia.text,
      'Puerta_total': _totalPuerta.text,
      'Puerta_observacion':_observacionPuerta.text,
      'Chapa_total': _totalChapa.text,
      'Chapa_observacion':_observacionChapa.text,
      'Camara_total': _totalCamara.text,
      'Camara_observacion':_observacionCamara.text,
      'Candado_total': _totalCandado.text,
      'Candado_observacion':_observacionCandado.text,
      'Puerta_Cristal_total': _totalPuertaCristal.text,
      'Puerta_Cristal_observacion':_observacionPuertaCristal.text,
      'Fachada_Cristal_total': _totalFachadaCristal.text,
      'Fachada_Cristal_observacion':_observacionFachadaCristal.text,
      'Muro_total': _totalMuro.text,
      'Muro_observacion':_observacionMuro.text,
      'Sirena_total': _totalSirena.text,
      'Sirena_observacion':_observacionSirena.text,
      'Planta_total': _totalPlanta.text,
      'Planta_observacion':_observacionPlanta.text,
      'Ventana_total': _totalVentana.text,
      'Ventana_observacion':_observacionVentana.text,
      'Porton_total': _totalPorton.text,
      'Porton_observacion':_observacionPorton.text,
      'Reja_total': _totalReja.text,
      'Reja_observacion':_observacionReja.text,
      'Ruidos_comentario': _ruidos.text,
      'Luz_comentario':_luz.text,
      'Perímetro_comentario': _perimetro.text,
      'Nombre_entrevista':_nombreEntrevista.text,
      'Puesto': _puesto.text,
      'Hora': now,
      'Fachada': imageUrl,
      'Entrada': imageUrl2,
      'Lateral': imageUrl3,
      'Firma': urlFirma,
      //'Cuenta': evento.cuenta,
    });
  }
  var _value1 = "Abierto";
  var _value2 = "Abierto";
  var _value3 ="Abierto";
  var _value4 = "Abierto";
  var _value5 = "Abierto";
  var _value6 = "Abierto";
  var _value7 = "Abierto";
  var _value8 = "Abierto";
  var _value9 = "Violado";
  var _value10 = "Violado";
  var _value11 = "Rotas";
  var _value12 = "Golpeado";
  var _value13 = "Golpeado";
  var _value14 = "Boquete";
  DropdownButton _itemDown() => DropdownButton<String>(
    value: _value1,
    onChanged: (String newValue) {
      setState(() {
        _value1 = newValue;
      });
    },
    items: <String>['Abierto', 'Violado', 'Fisurado', 'Oxidado', 'Clausurada', 'Rota', 'Otro']
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
    items: <String>['Abierto', 'Violado', 'Fisurado', 'Oxidado', 'Clausurada', 'Rota', 'Otro']
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
    items: <String>['Abierto', 'Violado', 'Fisurado', 'Oxidado', 'Clausurada', 'Rota', 'Otro']
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
    items: <String>['Abierto', 'Violado', 'Fisurado', 'Oxidado', 'Clausurada', 'Rota', 'Otro']
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
    items: <String>['Abierto', 'Violado', 'Fisurado', 'Oxidado', 'Clausurada', 'Rota', 'Otro']
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
    items: <String>['Abierto', 'Violado', 'Fisurado', 'Oxidado', 'Clausurada', 'Rota', 'Otro']
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
    items: <String>['Abierto', 'Violado', 'Fisurado', 'Oxidado', 'Clausurada', 'Rota', 'Otro']
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
    items: <String>['Abierto', 'Violado', 'Fisurado', 'Oxidado', 'Clausurada', 'Rota', 'Otro']
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
    items: <String>['Violado', 'Botadas', 'Abierto', 'Otro']
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
        _value10 = newValue;
      });
    },
    items: <String>['Violado', 'Botadas', 'Abierto', 'Otro']
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
    items: <String>['Rotas', 'Sustraidas', 'Desviadas', 'Pintadas', 'Sustraidas', 'Golpeadas', 'Otros']
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
    items: <String>['Golpeado', 'Robado', 'Fisurado', 'Dañado', 'Oxidado', 'Cortado','Arrancado', 'Otro']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemDown13() => DropdownButton<String>(
    value: _value13,
    onChanged: (String newValue) {
      setState(() {
        _value13 = newValue;
      });
    },
    items: <String>['Golpeado', 'Robado', 'Arrancado', 'Dañado', 'Apagado', 'Violado','Intento de robo', 'Otro']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  DropdownButton _itemDown14() => DropdownButton<String>(
    value: _value14,
    onChanged: (String newValue) {
      setState(() {
        _value14 = newValue;
      });
    },
    items: <String>['Boquete', 'Derrumbado', 'Accidentado', 'Otro']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    })
        .toList(),
  );
  bool _isTextFieldVisible = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: ListView(
        children: <Widget>[

          SizedBox(
            height: 10,
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
                          "Tarea",
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

                  child:  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 6,
                      ),

                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Observaciones',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)
                              ),
                            ),

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
                                        setSelectedRadio(val);
                                      },
                                      value: "Si",
                                      groupValue: selectedRadio,
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
                                        setSelectedRadio(val);
                                      },
                                      value: "No",
                                      groupValue: selectedRadio,
                                      activeColor: Color(0xFF2350A6),
                                    ),

                                  ],
                                ),

                              ],
                            ),
                            _isTextFieldVisible
                                ? Padding(

                              padding: EdgeInsets.symmetric(horizontal: 25.0),
                              child: TextField(
                                controller: _textFieldController,

                                style: TextStyle(fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1D539B)
                                ),
                                decoration: InputDecoration(
                                  labelText: 'Observación',
                                  hintStyle: TextStyle(fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF1D539B)),
                                  fillColor: Colors.blueGrey,
                                  // hintText: "Enter Username",
                                ),
                              ),
                            )
                                :SizedBox(),
                            SizedBox(
                              height: 25.0,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 6,
                      ),

                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Cortina(s) entrada de clientes',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio2(val);
                                      },
                                      value: "Aplica",
                                      groupValue: selectedRadio2,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "No aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio2(val);
                                      },
                                      value: "No aplica",
                                      groupValue: selectedRadio2,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          child:  TextField(
                                            controller: _totalCortinaClientes,
                                            keyboardType: TextInputType.number,

                                            maxLines: 1,
                                            cursorColor: Colors.black,
                                            cursorWidth: 7.0,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0
                                            ),
                                            decoration: InputDecoration(
                                              hintText: 'Total',
                                              hintStyle: TextStyle(fontSize: 16.0,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF1D539B)),
                                              fillColor: Colors.blueGrey,
                                            ),
                                            onChanged:(String value){},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                              ],
                            ),
                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _itemDown(),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 185,
                                      child:  TextField(
                                        controller: _observacionCortinaClientes,
                                        keyboardType: TextInputType.multiline,
                                        // maxLines: 3,
                                        cursorColor: Colors.black,
                                        cursorWidth: 7.0,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0
                                        ),
                                        decoration: InputDecoration(
                                          //labelText: 'Total',
                                          hintText: 'Observación (opcional)',
                                          hintStyle: TextStyle(fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1D539B)),
                                          fillColor: Colors.blueGrey,
                                        ),
                                        onChanged:(String value){},
                                      ),
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Cortina(s) recibo de mercancia',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio3(val);
                                      },
                                      value: "Aplica",
                                      groupValue: selectedRadio3,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "No aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio3(val);
                                      },
                                      value: "No aplica",
                                      groupValue: selectedRadio3,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          child:  TextField(
                                            keyboardType: TextInputType.number,
                                            controller: _totalCortinasMercancia,

                                            maxLines: 1,
                                            cursorColor: Colors.black,
                                            cursorWidth: 7.0,
                                            style: TextStyle(

                                                color: Colors.black,
                                                fontSize: 19.0
                                            ),
                                            decoration: InputDecoration(
                                              //labelText: 'Total',
                                              hintText: 'Total',
                                              hintStyle: TextStyle(fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF1D539B)),
                                              fillColor: Colors.blueGrey,
                                            ),
                                            onChanged:(String value){},
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                              ],
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _itemDown2(),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 185,
                                      child:  TextField(
                                        controller: _observacionCortinasMercancia,
                                        keyboardType: TextInputType.multiline,
                                        // maxLines: 3,
                                        cursorColor: Colors.black,
                                        cursorWidth: 7.0,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19.0
                                        ),
                                        decoration: InputDecoration(
                                          //labelText: 'Total',
                                          hintText: 'Observación (opcional)',
                                          hintStyle: TextStyle(fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1D539B)),
                                          fillColor: Colors.blueGrey,
                                        ),
                                        onChanged:(String value){},
                                      ),
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Puerta(s)',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio4(val);
                                      },
                                      value: "Aplica",
                                      groupValue: selectedRadio4,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "No aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio4(val);
                                      },
                                      value: "No aplica",
                                      groupValue: selectedRadio4,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          child:  TextField(
                                            controller: _totalPuerta,
                                            keyboardType: TextInputType.number,

                                            maxLines: 1,
                                            cursorColor: Colors.black,
                                            cursorWidth: 7.0,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19.0
                                            ),
                                            decoration: InputDecoration(
                                              //labelText: 'Total',
                                              hintText: 'Total',
                                              hintStyle: TextStyle(fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF1D539B)),
                                              fillColor: Colors.blueGrey,
                                            ),
                                            onChanged:(String value){},
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                              ],
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _itemDown3(),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 185,
                                      child:  TextField(
                                        controller: _observacionPuerta,
                                        keyboardType: TextInputType.multiline,
                                        // maxLines: 3,
                                        cursorColor: Colors.black,
                                        cursorWidth: 7.0,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19.0
                                        ),
                                        decoration: InputDecoration(
                                          //labelText: 'Total',
                                          hintText: 'Observación (opcional)',
                                          hintStyle: TextStyle(fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1D539B)),
                                          fillColor: Colors.blueGrey,
                                        ),
                                        onChanged:(String value){},
                                      ),
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Chapa(s)',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio5(val);
                                      },
                                      value: "Aplica",
                                      groupValue: selectedRadio5,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "No aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio5(val);
                                      },
                                      value: "No aplica",
                                      groupValue: selectedRadio5,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          child:  TextField(
                                            controller: _totalChapa,
                                            keyboardType: TextInputType.number,

                                            maxLines: 1,
                                            cursorColor: Colors.black,
                                            cursorWidth: 7.0,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19.0
                                            ),
                                            decoration: InputDecoration(
                                              //labelText: 'Total',
                                              hintText: 'Total',
                                              hintStyle: TextStyle(fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF1D539B)),
                                              fillColor: Colors.blueGrey,
                                            ),
                                            onChanged:(String value){},
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                              ],
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _itemDown9(),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 185,
                                      child:  TextField(
                                        controller: _observacionChapa,
                                        keyboardType: TextInputType.multiline,
                                        // maxLines: 3,
                                        cursorColor: Colors.black,
                                        cursorWidth: 7.0,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19.0
                                        ),
                                        decoration: InputDecoration(
                                          //labelText: 'Total',
                                          hintText: 'Observación (opcional)',
                                          hintStyle: TextStyle(fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1D539B)),
                                          fillColor: Colors.blueGrey,
                                        ),
                                        onChanged:(String value){},
                                      ),
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Cámara(s)',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio6(val);
                                      },
                                      value: "Aplica",
                                      groupValue: selectedRadio6,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "No aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio6(val);
                                      },
                                      value: "No aplica",
                                      groupValue: selectedRadio6,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          child:  TextField(
                                            controller: _totalCamara,
                                            keyboardType: TextInputType.number,

                                            maxLines: 1,
                                            cursorColor: Colors.black,
                                            cursorWidth: 7.0,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19.0
                                            ),
                                            decoration: InputDecoration(
                                              //labelText: 'Total',
                                              hintText: 'Total',
                                              hintStyle: TextStyle(fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF1D539B)),
                                              fillColor: Colors.blueGrey,
                                            ),
                                            onChanged:(String value){},
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                              ],
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _itemDown11(),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 134,
                                      child:  TextField(
                                        controller: _observacionCamara,
                                        keyboardType: TextInputType.multiline,
                                        // maxLines: 3,
                                        cursorColor: Colors.black,
                                        cursorWidth: 7.0,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19.0
                                        ),
                                        decoration: InputDecoration(
                                          //labelText: 'Total',
                                          hintText: 'Observación (opcional)',
                                          hintStyle: TextStyle(fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1D539B)),
                                          fillColor: Colors.blueGrey,
                                        ),
                                        onChanged:(String value){},
                                      ),
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Candado(s)',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio7(val);
                                      },
                                      value: "Aplica",
                                      groupValue: selectedRadio7,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "No aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio7(val);
                                      },
                                      value: "No aplica",
                                      groupValue: selectedRadio7,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          child:  TextField(
                                            controller: _totalCandado,
                                            keyboardType: TextInputType.number,

                                            maxLines: 1,
                                            cursorColor: Colors.black,
                                            cursorWidth: 7.0,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19.0
                                            ),
                                            decoration: InputDecoration(
                                              //labelText: 'Total',
                                              hintText: 'Total',
                                              hintStyle: TextStyle(fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF1D539B)),
                                              fillColor: Colors.blueGrey,
                                            ),
                                            onChanged:(String value){},
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                              ],
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _itemDown10(),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 185,
                                      child:  TextField(
                                        controller: _observacionCandado,
                                        keyboardType: TextInputType.multiline,
                                        // maxLines: 3,
                                        cursorColor: Colors.black,
                                        cursorWidth: 7.0,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19.0
                                        ),
                                        decoration: InputDecoration(
                                          //labelText: 'Total',
                                          hintText: 'Observación (opcional)',
                                          hintStyle: TextStyle(fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1D539B)),
                                          fillColor: Colors.blueGrey,
                                        ),
                                        onChanged:(String value){},
                                      ),
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
                      Container
                        (
                        decoration: BoxDecoration(
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Puerta(s) de cristal',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio8(val);
                                      },
                                      value: "Aplica",
                                      groupValue: selectedRadio8,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "No aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio8(val);
                                      },
                                      value: "No aplica",
                                      groupValue: selectedRadio8,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          child:  TextField(
                                            controller: _totalPuertaCristal,
                                            keyboardType: TextInputType.number,

                                            maxLines: 1,
                                            cursorColor: Colors.black,
                                            cursorWidth: 7.0,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19.0
                                            ),
                                            decoration: InputDecoration(

                                              //labelText: 'Total',
                                              hintText: 'Total',
                                              hintStyle: TextStyle(fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF1D539B)),
                                              fillColor: Colors.blueGrey,
                                            ),
                                            onChanged:(String value){},
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                              ],
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _itemDown4(),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 185,
                                      child:  TextField(
                                        controller: _observacionPuertaCristal,
                                        keyboardType: TextInputType.multiline,
                                        // maxLines: 3,
                                        cursorColor: Colors.black,
                                        cursorWidth: 7.0,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19.0
                                        ),
                                        decoration: InputDecoration(
                                          //labelText: 'Total',
                                          hintText: 'Observación (opcional)',
                                          hintStyle: TextStyle(fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1D539B)),
                                          fillColor: Colors.blueGrey,
                                        ),
                                        onChanged:(String value){},
                                      ),
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Fachada(s) de cristal',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio9(val);
                                      },
                                      value: "Aplica",
                                      groupValue: selectedRadio9,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "No aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio9(val);
                                      },
                                      value: "No aplica",
                                      groupValue: selectedRadio9,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          child:  TextField(
                                            controller: _totalFachadaCristal,
                                            keyboardType: TextInputType.number,

                                            maxLines: 1,
                                            cursorColor: Colors.black,
                                            cursorWidth: 7.0,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19.0
                                            ),
                                            decoration: InputDecoration(
                                              //labelText: 'Total',
                                              hintText: 'Total',
                                              hintStyle: TextStyle(fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF1D539B)),
                                              fillColor: Colors.blueGrey,
                                            ),
                                            onChanged:(String value){},
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                              ],
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _itemDown5(),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 185,
                                      child:  TextField(
                                        controller: _observacionFachadaCristal,
                                        keyboardType: TextInputType.multiline,
                                        // maxLines: 3,
                                        cursorColor: Colors.black,
                                        cursorWidth: 7.0,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19.0
                                        ),
                                        decoration: InputDecoration(
                                          //labelText: 'Total',
                                          hintText: 'Observación (opcional)',
                                          hintStyle: TextStyle(fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1D539B)),
                                          fillColor: Colors.blueGrey,
                                        ),
                                        onChanged:(String value){},
                                      ),
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Muro(s) perimetrales',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio10(val);
                                      },
                                      value: "Aplica",
                                      groupValue: selectedRadio10,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "No aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio10(val);
                                      },
                                      value: "No aplica",
                                      groupValue: selectedRadio10,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          child:  TextField(
                                            controller: _totalMuro,
                                            keyboardType: TextInputType.number,

                                            maxLines: 1,
                                            cursorColor: Colors.black,
                                            cursorWidth: 7.0,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19.0
                                            ),
                                            decoration: InputDecoration(
                                              //labelText: 'Total',
                                              hintText: 'Total',
                                              hintStyle: TextStyle(fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF1D539B)),
                                              fillColor: Colors.blueGrey,
                                            ),
                                            onChanged:(String value){},
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                              ],
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _itemDown14(),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 175,
                                      child:  TextField(
                                        controller: _observacionMuro,
                                        keyboardType: TextInputType.multiline,
                                        // maxLines: 3,
                                        cursorColor: Colors.black,
                                        cursorWidth: 7.0,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19.0
                                        ),
                                        decoration: InputDecoration(
                                          //labelText: 'Total',
                                          hintText: 'Observación (opcional)',
                                          hintStyle: TextStyle(fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1D539B)),
                                          fillColor: Colors.blueGrey,
                                        ),
                                        onChanged:(String value){},
                                      ),
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Sirena(s)',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio11(val);
                                      },
                                      value: "Aplica",
                                      groupValue: selectedRadio11,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "No aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio11(val);
                                      },
                                      value: "No aplica",
                                      groupValue: selectedRadio11,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          child:  TextField(
                                            controller: _totalSirena,
                                            keyboardType: TextInputType.number,

                                            maxLines: 1,
                                            cursorColor: Colors.black,
                                            cursorWidth: 7.0,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19.0
                                            ),
                                            decoration: InputDecoration(
                                              //labelText: 'Total',
                                              hintText: 'Total',
                                              hintStyle: TextStyle(fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF1D539B)),
                                              fillColor: Colors.blueGrey,
                                            ),
                                            onChanged:(String value){},
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                              ],
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _itemDown12(),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 185,
                                      child:  TextField(
                                        controller: _observacionSirena,
                                        keyboardType: TextInputType.multiline,
                                        // maxLines: 3,
                                        cursorColor: Colors.black,
                                        cursorWidth: 7.0,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19.0
                                        ),
                                        decoration: InputDecoration(
                                          //labelText: 'Total',
                                          hintText: 'Observación (opcional)',
                                          hintStyle: TextStyle(fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1D539B)),
                                          fillColor: Colors.blueGrey,
                                        ),
                                        onChanged:(String value){},
                                      ),
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Planta(s) de luz',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio12(val);
                                      },
                                      value: "Aplica",
                                      groupValue: selectedRadio12,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "No aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio12(val);
                                      },
                                      value: "No aplica",
                                      groupValue: selectedRadio12,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          child:  TextField(
                                            controller: _totalPlanta,
                                            keyboardType: TextInputType.number,

                                            maxLines: 1,
                                            cursorColor: Colors.black,
                                            cursorWidth: 7.0,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19.0
                                            ),
                                            decoration: InputDecoration(
                                              //labelText: 'Total',
                                              hintText: 'Total',
                                              hintStyle: TextStyle(fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF1D539B)),
                                              fillColor: Colors.blueGrey,
                                            ),
                                            onChanged:(String value){},
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                              ],
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _itemDown13(),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 156,
                                      child:  TextField(
                                        controller: _observacionPlanta,
                                        keyboardType: TextInputType.multiline,
                                        // maxLines: 3,
                                        cursorColor: Colors.black,
                                        cursorWidth: 7.0,
                                        style: TextStyle(

                                            color: Colors.black,
                                            fontSize: 19.0
                                        ),
                                        decoration: InputDecoration(
                                          //labelText: 'Total',
                                          hintText: 'Observación (opcional)',
                                          hintStyle: TextStyle(fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1D539B)),
                                          fillColor: Colors.blueGrey,
                                        ),
                                        onChanged:(String value){},
                                      ),
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Ventana(s) o ventanales',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio13(val);
                                      },
                                      value: "Aplica",
                                      groupValue: selectedRadio13,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "No aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio13(val);
                                      },
                                      value: "No aplica",
                                      groupValue: selectedRadio13,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          child:  TextField(
                                            controller: _totalVentana,
                                            keyboardType: TextInputType.number,

                                            maxLines: 1,
                                            cursorColor: Colors.black,
                                            cursorWidth: 7.0,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19.0
                                            ),
                                            decoration: InputDecoration(
                                              //labelText: 'Total',
                                              hintText: 'Total',
                                              hintStyle: TextStyle(fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF1D539B)),
                                              fillColor: Colors.blueGrey,
                                            ),
                                            onChanged:(String value){},
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                              ],
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _itemDown6(),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 185,
                                      child:  TextField(
                                        controller: _observacionVentana,
                                        keyboardType: TextInputType.multiline,
                                        // maxLines: 3,
                                        cursorColor: Colors.black,
                                        cursorWidth: 7.0,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19.0
                                        ),
                                        decoration: InputDecoration(
                                          //labelText: 'Total',
                                          hintText: 'Observación (opcional)',
                                          hintStyle: TextStyle(fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1D539B)),
                                          fillColor: Colors.blueGrey,
                                        ),
                                        onChanged:(String value){},
                                      ),
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Porton(es) de estacionamiento',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio14(val);
                                      },
                                      value: "Aplica",
                                      groupValue: selectedRadio14,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "No aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio14(val);
                                      },
                                      value: "No aplica",
                                      groupValue: selectedRadio14,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          child:  TextField(
                                            controller: _totalPorton,
                                            keyboardType: TextInputType.number,

                                            maxLines: 1,
                                            cursorColor: Colors.black,
                                            cursorWidth: 7.0,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19.0
                                            ),
                                            decoration: InputDecoration(
                                              //labelText: 'Total',
                                              hintText: 'Total',
                                              hintStyle: TextStyle(fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF1D539B)),
                                              fillColor: Colors.blueGrey,
                                            ),
                                            onChanged:(String value){},
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                              ],
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _itemDown7(),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 185,
                                      child:  TextField(
                                        controller: _observacionPorton,
                                        keyboardType: TextInputType.multiline,
                                        // maxLines: 3,
                                        cursorColor: Colors.black,
                                        cursorWidth: 7.0,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19.0
                                        ),
                                        decoration: InputDecoration(
                                          //labelText: 'Total',
                                          hintText: 'Observación (opcional)',
                                          hintStyle: TextStyle(fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1D539B)),
                                          fillColor: Colors.blueGrey,
                                        ),
                                        onChanged:(String value){},
                                      ),
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Puerta(s) de reja de protección',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio15(val);
                                      },
                                      value: "Aplica",
                                      groupValue: selectedRadio15,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Text(
                                      "No aplica",
                                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                                    ),
                                    Radio(
                                      onChanged: (val){
                                        setSelectedRadio15(val);
                                      },
                                      value: "No aplica",
                                      groupValue: selectedRadio15,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          child:  TextField(
                                            controller: _totalReja,
                                            keyboardType: TextInputType.number,

                                            maxLines: 1,
                                            cursorColor: Colors.black,
                                            cursorWidth: 7.0,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19.0
                                            ),
                                            decoration: InputDecoration(
                                              //labelText: 'Total',
                                              hintText: 'Total',
                                              hintStyle: TextStyle(fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF1D539B)),
                                              fillColor: Colors.blueGrey,
                                            ),
                                            onChanged:(String value){},
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                              ],
                            ),

                            ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _itemDown8(),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 185,
                                      child:  TextField(
                                        controller: _observacionReja,
                                        keyboardType: TextInputType.multiline,
                                        // maxLines: 3,
                                        cursorColor: Colors.black,
                                        cursorWidth: 7.0,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 19.0
                                        ),
                                        decoration: InputDecoration(
                                          //labelText: 'Total',
                                          hintText: 'Observación (opcional)',
                                          hintStyle: TextStyle(fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1D539B)),
                                          fillColor: Colors.blueGrey,
                                        ),
                                        onChanged:(String value){},
                                      ),
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Ruidos al interior',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

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
                                      value: "Si",
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
                                      value: "No",
                                      groupValue: selectedRadio16,
                                      activeColor: Color(0xFF2350A6),
                                    ),

                                  ],
                                ),

                              ],
                            ),
                            TextField(
                              controller: _ruidos,
                              maxLines: 3,
                              cursorColor: Colors.black,
                              cursorWidth: 7.0,
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)
                              ),
                              decoration: InputDecoration(
                                labelText: 'Llenar campo de texto',
                                hintStyle: TextStyle(fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1D539B)),
                                prefixIcon: const Icon(
                                  Icons.chrome_reader_mode,
                                  color: Colors.black,
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Luz al interior',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

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
                                      value: "Si",
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
                                      value: "No",
                                      groupValue: selectedRadio17,
                                      activeColor: Color(0xFF2350A6),
                                    ),

                                  ],
                                ),

                              ],
                            ),
                            TextField(
                              controller: _luz,
                              maxLines: 3,
                              cursorColor: Colors.black,
                              cursorWidth: 7.0,
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)
                              ),
                              decoration: InputDecoration(
                                labelText: 'Llenar campo de texto',
                                hintStyle: TextStyle(fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1D539B)),
                                prefixIcon: const Icon(
                                  Icons.chrome_reader_mode,
                                  color: Colors.black,
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Perímetro',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

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
                                      value:"Si",
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
                                      value: "No",
                                      groupValue: selectedRadio18,
                                      activeColor: Color(0xFF2350A6),
                                    ),

                                  ],
                                ),

                              ],
                            ),
                            TextField(
                              controller: _perimetro,
                              maxLines: 3,
                              cursorColor: Colors.black,
                              cursorWidth: 7.0,
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)
                              ),
                              decoration: InputDecoration(
                                labelText: 'Llenar campo de texto',
                                hintStyle: TextStyle(fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1D539B)),
                                prefixIcon: const Icon(
                                  Icons.chrome_reader_mode,
                                  color: Colors.black,
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
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(5.0)),
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Hubo entrevista',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),

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
                                      value: "Si",
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
                                      value: "No",
                                      groupValue: selectedRadio19,
                                      activeColor: Color(0xFF2350A6),
                                    ),

                                  ],
                                ),

                              ],
                            ),
                            Text(
                              'Nombre',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),
                            TextField(
                              controller: _nombreEntrevista,
                              maxLines: 1,
                              cursorColor: Colors.black,
                              cursorWidth: 7.0,
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)
                              ),
                              decoration: InputDecoration(
                                labelText: 'Llenar campo de texto',
                                hintStyle: TextStyle(fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1D539B)),
                                prefixIcon: const Icon(
                                  Icons.chrome_reader_mode,
                                  color: Colors.black,
                                ),
                              ),
                              onChanged:(String value){},
                            ),
                            Text(
                              'Puesto',
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)),
                            ),
                            TextField(
                              controller: _puesto,
                              maxLines: 1,
                              cursorColor: Colors.black,
                              cursorWidth: 7.0,
                              style: TextStyle(fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D539B)
                              ),
                              decoration: InputDecoration(
                                labelText: 'Llenar campo de texto',
                                hintStyle: TextStyle(fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1D539B)),
                                prefixIcon: const Icon(
                                  Icons.chrome_reader_mode,
                                  color: Colors.black,
                                ),
                              ),
                              onChanged:(String value){},
                            ),
                            SizedBox(
                              height: 6,
                            ),
                          ],
                        ),
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
                              uploadFirma();
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
                color: Color(0xFFFFB600),
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Firma electrónica",
                ),

              ):
              SizedBox(),
              Divider(
                color: Color(0xFFD4D4D4),
              ),
              Column(
                children: <Widget>[
                  Container(
                    child: imageFile == null
                        ?Text('')
                        :Image.file((imageFile)),
                  ),
                  Container(
                    width: 182,
                    height: 40,
                    margin: EdgeInsets.only(bottom: 14),
                    child: ButtonTheme(
                      child:
                      FlatButton(
                        onPressed: getImage,
                        color: Color(0xFF2350A6),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.photo_camera,
                              color: Color(0xFFFFFFFF),
                            ),
                            Text(
                              " Fotografia Fachada",
                              style: TextStyle(fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Color(0xFFD4D4D4),
              ),
              Column(
                children: <Widget>[
                  Container(
                    child: imageFile2 == null
                        ?Text('')
                        :Image.file((imageFile2)),
                  ),
                  Container(
                    width: 182,
                    height: 40,
                    margin: EdgeInsets.only(bottom: 14),
                    child: ButtonTheme(
                      child:
                      FlatButton(
                        onPressed: getImage2,
                        color: Color(0xFF2350A6),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.photo_camera,
                              color: Color(0xFFFFFFFF),
                            ),
                            Text(
                              " Fotografia Entrada",
                              style: TextStyle(fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Color(0xFFE5E5E5),
              ),
            Column(
          children: <Widget>[
            Container(
              child: imageFile3 == null
                  ?Text('')
                  :Image.file((imageFile3)),
            ),
            Container(
              width: 182,
              height: 40,
              margin: EdgeInsets.only(bottom: 14),
              child: ButtonTheme(
                child:
                FlatButton(
                  onPressed: getImage3,
                  color: Color(0xFF2350A6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.photo_camera,
                        color: Color(0xFFFFFFFF),
                      ),
                      Text(
                        " Fotografia Lateral",
                        style: TextStyle(fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
              Divider(
                color: Color(0xFFD4D4D4),
              ),
            /*  RaisedButton(
                onPressed: (){
                  _tarea();
                },
                textColor: Colors.white,
                color: Colors.green,
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Envíar",
                ),
              ),*/
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 40,
                    margin: EdgeInsets.all(16.0),
                    child: ButtonTheme(
                      child:
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamedAndRemoveUntil('/item', (Route<dynamic> route) => false);
                            _tarea();
                          },
                        color: Color(0xFF00E5D0),
                        child: Row( // Replace with a Row for horizontal icon + text
                          children: <Widget>[
                            Icon(
                              Icons.assignment,
                              color: Colors.white,
                            ),
                            Text(
                              "Enviar",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                      Container(
                      width: 110,
                      height: 40,
                      margin: EdgeInsets.only(bottom: 16, top: 16),
                      child: ButtonTheme(
                        child:
                        FlatButton(
                          onPressed: () => Navigator.pop(context, true),
                          color:  Color(0xFFFF0051),
                          child: Row( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                Icons.save_alt,
                                color: Colors.white,
                              ),
                              Text(
                                "Guardar",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              Divider(
                color: Color(0xFFD4D4D4),
              ),
            ],
          ),
        ],
      ),
    );

  }
}
