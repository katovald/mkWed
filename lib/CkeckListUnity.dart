import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:app_editesp/pages/ChatPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:ui' as ui;
import 'package:flutter_signature_pad/flutter_signature_pad.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

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
  List<MyItem> _items5 = <MyItem>[
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
  File imageFile;
  File imageFile2;
  File imageFile3;
  File imageFile4;
  File imageFirma;
  bool isLoading;
  String imageUrl;
  String imageUrl2;
  String imageUrl3;
  String imageUrl4;
  String urlFirma;

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
  Future getImage4() async {
    imageFile4 = await ImagePicker.pickImage(source: ImageSource.camera);

    if (imageFile4 != null) {
      setState(() {
        isLoading = true;
      });
      uploadFile4();
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
  Future uploadFile4() async {
    String fileName = DateTime.now().millisecondsSinceEpoch.toString();
    StorageReference reference = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask uploadTask = reference.putFile(imageFile4);
    StorageTaskSnapshot storageTaskSnapshot = await uploadTask.onComplete;
    storageTaskSnapshot.ref.getDownloadURL().then((downloadUrl) {
      imageUrl4 = downloadUrl;
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
 void _recepcion() {
    Firestore.instance.collection('Recepcion').add({
      'Matricula: 2CK-CAM':{
        'Pintura': selectedRadio,
        'Frenos': selectedRadio2,
        'Llanta_trasera_izquierda': selectedRadio3,
        'Llanta_trasera_derecha': selectedRadio4,
        'Llanta_delantera_izquierda': selectedRadio5,
        'Llanta_delantera_derecha': selectedRadio6,
        'Llanta_refacción': selectedRadio7,
        'Tarjeta_gasolina': selectedRadio8,
        'Cargo_gasolina': selectedRadio9,
        'Info_Correcta_Gasolina': selectedRadio10,
        'Estacionamiento_fondo': selectedRadio11,
        'Info_Correcta_Estacionamiento': selectedRadio12,
        'Cargador_USB': selectedRadio13,
        'Tag': selectedRadio14,
        'Guía_roja': selectedRadio15,
        'Lámpara': selectedRadio16,
        'Paraguas': selectedRadio17,
        'Manos_libres': selectedRadio18,
        'Red': selectedRadio19,
        'Extintor': selectedRadio20,
        'Gato': selectedRadio21,
        'Llave_de_cruz': selectedRadio22,
        'Señalamientos': selectedRadio23,
        'Kit_de_Limpieza': selectedRadio24,
        'Aceite': selectedRadio25,
        'Anticongelante': selectedRadio26,
        'Líquido_direccion': selectedRadio27,
        'Líquido_frenos': selectedRadio28,
        'Info_Correcta_Accesorios': selectedRadio29,
        'Gasolina_inicial': _itemGasolina().value,
        'Sistema_Eléctico': _TextController1.text,
        'No._Tarjeta_de_gasolina ': _TextController2.text,
        'Saldo_de_trajeta': _TextController3.text,
        'Hora_de_la_carga': _TextController4.text,
        'Fondo_de_estacionamiento': _TextController5.text,
        'Número_de_ticket': _TextController6.text,
        'Total': _TextController7.text,
        'Estatus_Cargador_USB': _itemDown().value,
        'Estatus_Tag': _itemDown2().value,
        'Estatus_Guía_Roja': _itemDown3().value,
        'Estatus_Lámpara': _itemDown4().value,
        'Estatus_Paraguas': _itemDown5().value,
        'Estatus_Manos_libes': _itemDown6().value,
        'Estatus_Red': _itemDown7().value,
        'Estatus_Extintor': _itemDown8().value,
        'Estatus_Gato': _itemDown9().value,
        'Estatus_Llave_de_cruz': _itemDown10().value,
        'Estatus_Señalamientos': _itemDown11().value,
        'Estatus_Kit_de_limpieza': _itemDown12().value,
        'Estatus_Aceite': _itemaceite().value,
        'Estatus_Anticongelante': _itemdmanti().value,
        'Estatus_Líquido_de_dirección': _itemdireccion().value,
        'Estatus_Líquido_de_frenos': _itemfrenos().value,
        'Hora': now,
        'Foto_frontal_piloto': imageUrl,
        'Foto_frontal_copiloto': imageUrl2,
        'Foto_trasera_piloto': imageUrl3,
        'Foto_trasera_copiloto': imageUrl4,
        'Firma': urlFirma,
      },

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
        _value10 = newValue;
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
  String selectedRadio20;
  String selectedRadio21;
  String selectedRadio22;
  String selectedRadio23;
  String selectedRadio24;
  String selectedRadio25;
  String selectedRadio26;
  String selectedRadio27;
  String selectedRadio28;
  String selectedRadio29;
  @override
  void initState() {
    super.initState();
    selectedRadio = "Nueva";
    selectedRadio2 = "Buen estado";
    selectedRadio3 = "Bien";
    selectedRadio4 = "Bien";
    selectedRadio5 = "Bien";
    selectedRadio6 = "Bien";
    selectedRadio7 = "Bien";
    selectedRadio8= "Si";
    selectedRadio9 = "Si";
    selectedRadio10 = "Si";
    selectedRadio11 = "Si";
    selectedRadio12 = "Si";
    selectedRadio13 = "Si";
    selectedRadio14 = "Si";
    selectedRadio15 = "Si";
    selectedRadio16 = "Si";
    selectedRadio17 = "Si";
    selectedRadio18 = "Si";
    selectedRadio19 = "Si";
    selectedRadio20= "Si";
    selectedRadio21 = "Si";
    selectedRadio22 = "Si";
    selectedRadio23 = "Si";
    selectedRadio24 = "Si";
    selectedRadio25= "Si";
    selectedRadio26 = "Si";
    selectedRadio27 = "Si";
    selectedRadio28 = "Si";
    selectedRadio29 = "Si";
  }
  setSelectedRadio (String val) {
    setState(() {
      selectedRadio = val;
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
  setSelectedRadio20 (String val) {
    setState(() {
      selectedRadio20 = val;
    });
  }
  setSelectedRadio21 (String val) {
    setState(() {
      selectedRadio21 = val;
    });
  }
  setSelectedRadio22 (String val) {
    setState(() {
      selectedRadio22 = val;
    });
  }
  setSelectedRadio23 (String val) {
    setState(() {
      selectedRadio23 = val;
    });
  }
  setSelectedRadio24 (String val) {
    setState(() {
      selectedRadio24 = val;
    });
  }
  setSelectedRadio25 (String val) {
    setState(() {
      selectedRadio25 = val;
    });
  }
  setSelectedRadio26 (String val) {
    setState(() {
      selectedRadio26 = val;
    });
  }
  setSelectedRadio27 (String val) {
    setState(() {
      selectedRadio27 = val;
    });
  }
  setSelectedRadio28 (String val) {
    setState(() {
      selectedRadio28 = val;
    });
  }
  setSelectedRadio29 (String val) {
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
      ),//appbar
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Estado de la pintura',
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
                                        "Nueva",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio(val);
                                        },
                                        value: "Nueva",
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
                                        value: "Regular",
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
                                        value: "Desgaste",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Estado de los Frenos',
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
                                color: Color(0xFFF3F3F3),
                                borderRadius: BorderRadius.circular(5.0)),
                            margin: EdgeInsets.only(left: 4.0, right: 4.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Sistema Eléctrico',
                                  style: TextStyle(fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF1D539B)
                                  ),
                                ),

                                TextField(
                                  controller: _TextController1,
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
                        ),

                        SizedBox(
                          height: 6,
                        ),


                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'LLanta trasera izquierda',
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
                                        "Bien",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio3(val);
                                        },
                                        value: "Bien",
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
                                        value: "1/2 Vida",
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
                                        value:"3/4 Vida",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'LLanta trasera derecha',
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
                                        "Bien",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio4(val);
                                        },
                                        value: "Bien",
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
                                        value: "1/2 Vida",
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
                                        value: "3/4 Vida",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'LLanta delantera izquierda',
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
                                        "Bien",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio5(val);
                                        },
                                        value: "Bien",
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
                                        value:  "1/2 Vida",
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
                                        value: "3/4 Vida",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'LLanta delantera derecha',
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
                                        "Bien",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio6(val);
                                        },
                                        value: "Bien",
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
                                        value:  "1/2 Vida",
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
                                        value: "3/4 Vida",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'LLanta de refacción',
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
                                        "Bien",
                                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                                      ),
                                      Radio(
                                        onChanged: (val){
                                          setSelectedRadio7(val);
                                        },
                                        value: "Bien",
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
                                        value:  "1/2 Vida",
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
                                        value: "3/4 Vida",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
//Tanque Gasolina Titulo<>
                              Text(
                                'Gasolina Inicial',
                                style: TextStyle(fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1D539B)
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
//Tarjeta Gasolina Titulo<>
                              Text(
                                '¿Tarjeta de Gasolina?',
                                style: TextStyle(fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1D539B)
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
                                        value: "Si",
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
                                        value: "No",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
//Cargo Gasolina Titulo<>
                              Text(
                                '¿Cargo Gasolina?',
                                style: TextStyle(fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1D539B)
                                ),
                              ),
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
                                        value: "Si",
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
                                        value: "No",
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
                                color: Color(0xFFF3F3F3),
                                borderRadius: BorderRadius.circular(5.0)),
                            margin: EdgeInsets.only(left: 4.0, right: 4.0),
                            child: Column(
                              children: <Widget>[
//Titulo
                                Text(
                                  'No. Tarjeta de Gasolina',
                                  style: TextStyle(fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF1D539B)
                                  ),
                                ),

                            TextField(
                              controller: _TextController2,
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
                                color: Color(0xFFF3F3F3),
                                borderRadius: BorderRadius.circular(5.0)),
                            margin: EdgeInsets.only(left: 4.0, right: 4.0),
                            child: Column(
                              children: <Widget>[
//Titulo
                                Text(
                                  'Saldo de Tarjeta',
                                  style: TextStyle(fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF1D539B)
                                  ),
                                ),

                                TextField(
                                  controller: _TextController3,
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
                                color: Color(0xFFF3F3F3),
                                borderRadius: BorderRadius.circular(5.0)),
                            margin: EdgeInsets.only(left: 4.0, right: 4.0),
                            child: Column(
                              children: <Widget>[
//Titulo
                                Text(
                                  'Hora de la Carga',
                                  style: TextStyle(fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF1D539B)
                                  ),
                                ),

                                TextField(
                                  controller: _TextController4,
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
                        ),
//Cuadros de Texto </>
//Caja de comentarios </>

                        SizedBox(
                          height: 6,
                        ),

                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
//Info Titulo<>
                              Text(
                                '¿Es correcta la informacion?',
                                style: TextStyle(fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1D539B)
                                ),
                              ),
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
                                        value: "Si",
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
                                        value: "No",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '¿Cuenta con fondo de estacionamientos?',
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
                                          setSelectedRadio11(val);
                                        },
                                        value: "Si",
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
                                        value: "No",
                                        groupValue: selectedRadio11,
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
                                color: Color(0xFFF3F3F3),
                                borderRadius: BorderRadius.circular(5.0)),
                            margin: EdgeInsets.only(left: 4.0, right: 4.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  '¿Cuánto?',
                                  style: TextStyle(fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF1D539B)
                                  ),
                                ),

                                TextField(
                                  controller: _TextController5,
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
                                color: Color(0xFFF3F3F3),
                                borderRadius: BorderRadius.circular(5.0)),
                            margin: EdgeInsets.only(left: 4.0, right: 4.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Número de ticket de estacionamiento',
                                  style: TextStyle(fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF1D539B)
                                  ),
                                ),

                                TextField(
                                  controller: _TextController6,
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
                                color: Color(0xFFF3F3F3),
                                borderRadius: BorderRadius.circular(5.0)),
                            margin: EdgeInsets.only(left: 4.0, right: 4.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Total en pesos',
                                  style: TextStyle(fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF1D539B)
                                  ),
                                ),

                                TextField(
                                  controller: _TextController7,
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
                        ),


                        SizedBox(
                          height: 6,
                        ),



                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '¿Es correcta la información?',
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
                                          setSelectedRadio12(val);
                                        },
                                        value: "Si",
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
                                        value: "No",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Cargador USB',
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
                                          setSelectedRadio13(val);
                                        },
                                        value: "Si",
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
                                        value: "No",
                                        groupValue: selectedRadio13,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Tag',
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
                                          setSelectedRadio14(val);
                                        },
                                        value: "Si",
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
                                        value: "No",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Guía roja',
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
                                          setSelectedRadio15(val);
                                        },
                                        value: "Si",
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
                                        value: "No",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Lámpara',
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Paraguas',
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Manos libres',
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
                                          setSelectedRadio18(val);
                                        },
                                        value: "Si",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Red',
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Extintor',
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
                                          setSelectedRadio20(val);
                                        },
                                        value: "Si",
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
                                        value: "No",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Gato',
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
                                          setSelectedRadio21(val);
                                        },
                                        value: "Si",
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
                                        value: "No",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Llave de cruz',
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
                                          setSelectedRadio22(val);
                                        },
                                        value: "Si",
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
                                        value: "No",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Señalamientos',
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
                                          setSelectedRadio23(val);
                                        },
                                        value: "Si",
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
                                        value: "No",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Kit de limpieza',
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
                                          setSelectedRadio24(val);
                                        },
                                        value: "Si",
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
                                        value: "No",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Aceite',
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
                                          setSelectedRadio25(val);
                                        },
                                        value: "Si",
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
                                        value: "No",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Anticongelante',
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
                                          setSelectedRadio26(val);
                                        },
                                        value: "Si",
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
                                        value: "No",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Líquido de dirección',
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
                                          setSelectedRadio27(val);
                                        },
                                        value: "Si",
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
                                        value: "No",
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Líquido de frenos',
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
                                          setSelectedRadio28(val);
                                        },
                                        value: "Si",
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
                                        value: "No",
                                        groupValue: selectedRadio28,
                                        activeColor: Color(0xFF2350A6),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
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
                              color: Color(0xFFF3F3F3),
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.only(left: 4.0, right: 4.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '¿Es correcta la información?',
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
                                          setSelectedRadio29(val);
                                        },
                                        value: "Si",
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
                                        value: "No",
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

            SizedBox(
              height: 10,
            ),
            ExpansionPanelList(

              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _items5[index].isExpanded = !_items5[index].isExpanded;
                });
              },
              children: _items5.map((MyItem item) {
                return  ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                            "Evidencias",
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
                            SizedBox(height: 10),
                            Container(
                              width: 241,
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
                                        " Foto frontal piloto/cofre",
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
                        SizedBox(
                          height: 6,
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: imageFile2 == null
                                  ?Text('')
                                  :Image.file((imageFile2)),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 241,
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
                                        " Foto frontal copiloto/cofre",
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
                        SizedBox(
                          height: 6,
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: imageFile3 == null
                                  ?Text('')
                                  :Image.file((imageFile3)),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 241,
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
                                        " Foto trasera piloto/cajuela",
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
                        SizedBox(
                          height: 6,
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: imageFile4 == null
                                  ?Text('')
                                  :Image.file((imageFile4)),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 241,
                              height: 40,
                              margin: EdgeInsets.only(bottom: 14),
                              child: ButtonTheme(
                                child:
                                FlatButton(
                                  onPressed: getImage4,
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
                                        " Foto trasera copiloto/cajuela",
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

                        )
                            : SizedBox(),
                        Divider(
                          color: Color(0xFFD4D4D4),
                        ),
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

                  ),
                );

              }).toList(),
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

    );//no
  } //no
}//no
