import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_editesp/CameraW.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_signature_pad/flutter_signature_pad.dart';
class formulario_Tareas extends StatefulWidget {
  @override
  _formulario_TareasState createState() => _formulario_TareasState();
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
  List<MyItem> _items = <MyItem>[
    MyItem()
  ];
  ByteData _img = ByteData(0);
  var color = Colors.black;
  var strokeWidth = 2.0;
  final _sign = GlobalKey<SignatureState>();
  bool _canShowButton = true;
  var _value1 = "1";
  var _value2 = "1";
  var _value3 = "1";
  var _value4 = "1";
  var _value5 = "1";
  var _value6 = "1";
  var _value7 = "1";
  var _value8 = "1";
  var _value9 = "1";
  var _value10 = "1";
  var _value11 = "1";
  var _value12 = "1";
  var _value13 = "1";
  var _value14 = "1";
  DropdownButton _itemDown() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Abierto",
            ),
          ],
        ),
      ),
    DropdownMenuItem(
      value: "2",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 10),
          Text(
            "Violado",
          ),
        ],
      ),
    ),
    DropdownMenuItem(
      value: "3",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 10),
          Text(
            "Fisurado",
          ),
        ],
      ),
    ),
    DropdownMenuItem(
      value: "4",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 10),
          Text(
            "Oxidado",
          ),
        ],
      ),
    ),
    DropdownMenuItem(
      value: "5",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 10),
          Text(
            "Clausurada",
          ),
        ],
      ),
    ),
    DropdownMenuItem(
      value: "6",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 10),
          Text(
            "Rota",
          ),
        ],
      ),
    ),
    DropdownMenuItem(
      value: "7",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 10),
          Text(
            "Otro",
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
      color: Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemDown2() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Abierto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Violado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "3",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Fisurado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "4",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Oxidado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "5",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Clausurada",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "6",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Rota",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "7",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Otro",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _value2 = value;
      });
    },

    value: _value2,
    elevation: 2,

    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemDown3() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Abierto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Violado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "3",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Fisurado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "4",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Oxidado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "5",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Clausurada",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "6",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Rota",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "7",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Otro",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _value3 = value;
      });
    },

    value: _value3,
    elevation: 2,

    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemDown4() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Abierto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Violado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "3",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Fisurado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "4",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Oxidado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "5",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Clausurada",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "6",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Rota",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "7",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Otro",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _value4 = value;
      });
    },

    value: _value4,
    elevation: 2,

    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemDown5() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Abierto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Violado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "3",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Fisurado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "4",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Oxidado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "5",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Clausurada",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "6",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Rota",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "7",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Otro",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _value5 = value;
      });
    },

    value: _value5,
    elevation: 2,

    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemDown6() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Abierto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Violado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "3",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Fisurado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "4",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Oxidado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "5",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Clausurada",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "6",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Rota",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "7",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Otro",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _value6 = value;
      });
    },

    value: _value6,
    elevation: 2,

    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemDown7() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Abierto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Violado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "3",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Fisurado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "4",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Oxidado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "5",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Clausurada",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "6",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Rota",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "7",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Otro",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _value7 = value;
      });
    },

    value: _value7,
    elevation: 2,

    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemDown8() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Abierto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Violado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "3",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Fisurado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "4",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Oxidado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "5",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Clausurada",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "6",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Rota",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "7",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Otro",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _value8 = value;
      });
    },

    value: _value8,
    elevation: 2,

    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemDown9() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Violado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Botadas",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "3",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Abierto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "4",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Otro",
            ),
          ],
        ),
      ),

    ],
    onChanged: (value) {
      setState(() {
        _value9 = value;
      });
    },

    value: _value9,
    elevation: 2,

    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemDown10() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Violado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Botadas",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "3",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Abierto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "4",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Otro",
            ),
          ],
        ),
      ),

    ],
    onChanged: (value) {
      setState(() {
        _value10 = value;
      });
    },

    value: _value10,
    elevation: 2,

    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemDown11() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Rotas",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Sustraidas",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "3",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Desviadas",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "4",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Pintadas",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "5",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Sustraidas o robadas",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "6",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Golpeadas o estrelladas",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "7",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Otros",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _value11 = value;
      });
    },

    value: _value11,
    elevation: 2,

    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemDown12() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Golpeado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Robado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "3",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Fisurado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "4",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Dañado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "5",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Oxidado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "6",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Cortado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "7",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Arrancado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "8",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Otro",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _value12 = value;
      });
    },

    value: _value12,
    elevation: 2,

    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemDown13() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Golpeado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Arrancado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "3",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Robado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "4",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Dañado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "5",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Apagado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "6",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Violado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "7",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Intentode robo",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "8",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Otro",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _value13 = value;
      });
    },

    value: _value13,
    elevation: 2,

    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w100,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemDown14() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Boquete",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Derrumbado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "3",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Accidentado",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "4",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Otro",
            ),
          ],
        ),
      ),

    ],
    onChanged: (value) {
      setState(() {
        _value14 = value;
      });
    },

    value: _value14,
    elevation: 2,

    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w100,
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
  int selectedRadio2;
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
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadio2 = 0;
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
  }
  setSelectedRadio (int val) {
    setState(() {
      selectedRadio = val;
      _isTextFieldVisible = !_isTextFieldVisible;
    });
  }
  setSelectedRadio2 (int val) {
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
  TextEditingController _textFieldController = TextEditingController();
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
                  return   Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Text(
                    "Tarea",
                    style: TextStyle(
                        fontSize: 21.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Observaciones',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                                      value: 2,
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
                                      value: 1,
                                      groupValue: selectedRadio,
                                      activeColor: Color(0xFF2350A6),
                                    ),

                                  ],
                                ),

                              ],
                            ),
                            /* TextField(
                        enabled: false,
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
                              color: Colors.black,
                              fontWeight: FontWeight.w100
                          ),
                          fillColor: Colors.blueGrey,
                          prefixIcon: const Icon(
                            Icons.drive_eta,
                            color: Colors.black,
                          ),
                        ),
                        onChanged:(String value){},
                      ),*/
                            _isTextFieldVisible
                                ? Padding(

                              padding: EdgeInsets.symmetric(horizontal: 25.0),
                              child: TextField(
                                controller: _textFieldController,

                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19.0
                                ),
                                decoration: InputDecoration(
                                  labelText: 'Observación',
                                  labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w100
                                  ),
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Cortinas(s) entrada de clientes',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                                      value: 1,
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
                                      value: 2,
                                      groupValue: selectedRadio2,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 116,
                                          child:  TextField(
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
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w100,
                                              ),
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
                                      width: 200,
                                      child:  TextField(
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
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w100,
                                          ),
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Cortinas(s) recibo de mercancia',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                                      value: 1,
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
                                      value: 2,
                                      groupValue: selectedRadio3,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 116,
                                          child:  TextField(
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
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w100,
                                              ),
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
                                      width: 200,
                                      child:  TextField(
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
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w100,
                                          ),
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Puerta(s)',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                                      value: 1,
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
                                      value: 2,
                                      groupValue: selectedRadio4,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 116,
                                          child:  TextField(
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
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w100,
                                              ),
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
                                      width: 200,
                                      child:  TextField(
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
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w100,
                                          ),
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Chapa(s)',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                                      value: 1,
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
                                      value: 2,
                                      groupValue: selectedRadio5,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 116,
                                          child:  TextField(
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
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w100,
                                              ),
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
                                      width: 200,
                                      child:  TextField(
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
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w100,
                                          ),
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Cámara(s)',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                                      value: 1,
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
                                      value: 2,
                                      groupValue: selectedRadio6,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 116,
                                          child:  TextField(
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
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w100,
                                              ),
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
                                          hintText: 'Observación',
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w100,
                                          ),
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Candado(s)',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                                      value: 1,
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
                                      value: 2,
                                      groupValue: selectedRadio7,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 116,
                                          child:  TextField(
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
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w100,
                                              ),
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
                                      width: 200,
                                      child:  TextField(
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
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w100,
                                          ),
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Puerta(s) de cristal',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                                      value: 1,
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
                                      value: 2,
                                      groupValue: selectedRadio8,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 116,
                                          child:  TextField(
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
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w100,
                                              ),
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
                                      width: 200,
                                      child:  TextField(
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
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w100,
                                          ),
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Fachada(s) de cristal',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                                      value: 1,
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
                                      value: 2,
                                      groupValue: selectedRadio9,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 116,
                                          child:  TextField(
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
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w100,
                                              ),
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
                                      width: 200,
                                      child:  TextField(
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
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w100,
                                          ),
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Muro(s) perimetrales',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                                      value: 1,
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
                                      value: 2,
                                      groupValue: selectedRadio10,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 116,
                                          child:  TextField(
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
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w100,
                                              ),
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
                                      width: 198,
                                      child:  TextField(
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
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w100,
                                          ),
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Sirena(s)',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                                      value: 1,
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
                                      value: 2,
                                      groupValue: selectedRadio11,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 116,
                                          child:  TextField(
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
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w100,
                                              ),
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
                                      width: 200,
                                      child:  TextField(
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
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w100,
                                          ),
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Planta(s) de luz',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                                      value: 1,
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
                                      value: 2,
                                      groupValue: selectedRadio12,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 116,
                                          child:  TextField(
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
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w100,
                                              ),
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
                                      width: 186,
                                      child:  TextField(
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
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w100,
                                          ),
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Ventana(s) o ventanales',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                                      value: 1,
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
                                      value: 2,
                                      groupValue: selectedRadio13,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 116,
                                          child:  TextField(
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
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w100,
                                              ),
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
                                      width: 200,
                                      child:  TextField(
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
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w100,
                                          ),
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Porton(es) de estacionamiento',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                                      value: 1,
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
                                      value: 2,
                                      groupValue: selectedRadio14,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 116,
                                          child:  TextField(
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
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w100,
                                              ),
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
                                      width: 200,
                                      child:  TextField(
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
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w100,
                                          ),
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Puerta(s) de reja de protección',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                                      value: 1,
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
                                      value: 2,
                                      groupValue: selectedRadio15,
                                      activeColor: Color(0xFF2350A6),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 116,
                                          child:  TextField(
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
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w100,
                                              ),
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
                                      width: 200,
                                      child:  TextField(
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
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w100,
                                          ),
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Ruidos al interior',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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

                              ],
                            ),
                            TextField(
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
                                    color: Colors.black,
                                    fontWeight: FontWeight.w100
                                ),
                                fillColor: Colors.blueGrey,
                                prefixIcon: const Icon(
                                  Icons.drive_eta,
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Luz al interior',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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

                              ],
                            ),
                            TextField(
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
                                    color: Colors.black,
                                    fontWeight: FontWeight.w100
                                ),
                                fillColor: Colors.blueGrey,
                                prefixIcon: const Icon(
                                  Icons.drive_eta,
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Perímetro',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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

                              ],
                            ),
                            TextField(
                              enabled: false,
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
                                    color: Colors.black,
                                    fontWeight: FontWeight.w100
                                ),
                                fillColor: Colors.blueGrey,
                                prefixIcon: const Icon(
                                  Icons.drive_eta,
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
                          //border: Border.all(color: Colors.grey, width: 1.0),
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(1.0)),
                        margin: EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Hubo entrevista',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
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

                              ],
                            ),
                            Text(
                              'Nombre',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
                            ),
                            TextField(
                              maxLines: 1,
                              cursorColor: Colors.black,
                              cursorWidth: 7.0,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19.0
                              ),
                              decoration: InputDecoration(
                                labelText: 'Llenar campo de texto',
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w100
                                ),
                                fillColor: Colors.blueGrey,
                                prefixIcon: const Icon(
                                  Icons.drive_eta,
                                  color: Colors.black,
                                ),
                              ),
                              onChanged:(String value){},
                            ),
                            Text(
                              'Puesto',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
                            ),
                            TextField(
                              maxLines: 1,
                              cursorColor: Colors.black,
                              cursorWidth: 7.0,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19.0
                              ),
                              decoration: InputDecoration(
                                labelText: 'Llenar campo de texto',
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w100
                                ),
                                fillColor: Colors.blueGrey,
                                prefixIcon: const Icon(
                                  Icons.drive_eta,
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
                      //   _img.buffer.lengthInBytes == 0 ? Container(decoration: BoxDecoration(color: Colors.white),) : LimitedBox(maxHeight: 0.0, child: Image.memory(_img.buffer.asUint8List())),
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
              Text(
                'Fotografia fachada',
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
                'Fotografia entrada',
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
                'Fotografia lateral',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              SizedBox(
                height: 6,
              ),
              CameraW(),
            ],
          ),
        ],
      ),
    );

  }
}
