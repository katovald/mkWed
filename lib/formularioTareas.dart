import 'package:flutter/material.dart';
class formulario_Tareas extends StatefulWidget {
  @override
  _formulario_TareasState createState() => _formulario_TareasState();
}

class _formulario_TareasState  extends State<formulario_Tareas>{
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
  var _valueaceite = "1";
  var _valuemanti = "1";
  var _valuedireccion = "1";
  var _valuefrenos = "1";
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
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Buen estado",
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
              "Usado",
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
              "Mal",
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
              "Roto",
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
              "Desgastado",
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
              "Caducado",
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
              "Inservible",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "9",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Obsoleto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "10",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Sin comprar",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "11",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "En proceso compra",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "12",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Reposición",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "13",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Solicitar cambio",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "14",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Incompleto",
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
  DropdownButton _itemDown2() => DropdownButton<String>(
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
      DropdownMenuItem(
        value: "2",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Buen estado",
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
              "Usado",
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
              "Mal",
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
              "Roto",
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
              "Desgastado",
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
              "Caducado",
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
              "Inservible",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "9",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Obsoleto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "10",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Sin comprar",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "11",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "En proceso compra",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "12",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Reposición",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "13",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Solicitar cambio",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "14",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Incompleto",
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
      color: Colors.greenAccent,
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
              "Nuevo",
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
              "Buen estado",
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
              "Usado",
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
              "Mal",
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
              "Roto",
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
              "Desgastado",
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
              "Caducado",
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
              "Inservible",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "9",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Obsoleto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "10",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Sin comprar",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "11",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "En proceso compra",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "12",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Reposición",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "13",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Solicitar cambio",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "14",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Incompleto",
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
      color: Colors.greenAccent,
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
              "Nuevo",
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
              "Buen estado",
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
              "Usado",
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
              "Mal",
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
              "Roto",
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
              "Desgastado",
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
              "Caducado",
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
              "Inservible",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "9",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Obsoleto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "10",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Sin comprar",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "11",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "En proceso compra",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "12",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Reposición",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "13",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Solicitar cambio",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "14",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Incompleto",
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
      color: Colors.greenAccent,
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
              "Nuevo",
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
              "Buen estado",
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
              "Usado",
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
              "Mal",
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
              "Roto",
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
              "Desgastado",
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
              "Caducado",
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
              "Inservible",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "9",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Obsoleto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "10",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Sin comprar",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "11",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "En proceso compra",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "12",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Reposición",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "13",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Solicitar cambio",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "14",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Incompleto",
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
      color: Colors.greenAccent,
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
              "Nuevo",
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
              "Buen estado",
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
              "Usado",
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
              "Mal",
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
              "Roto",
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
              "Desgastado",
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
              "Caducado",
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
              "Inservible",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "9",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Obsoleto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "10",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Sin comprar",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "11",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "En proceso compra",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "12",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Reposición",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "13",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Solicitar cambio",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "14",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Incompleto",
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
      color: Colors.greenAccent,
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
              "Nuevo",
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
              "Buen estado",
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
              "Usado",
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
              "Mal",
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
              "Roto",
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
              "Desgastado",
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
              "Caducado",
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
              "Inservible",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "9",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Obsoleto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "10",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Sin comprar",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "11",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "En proceso compra",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "12",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Reposición",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "13",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Solicitar cambio",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "14",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Incompleto",
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
      color: Colors.greenAccent,
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
              "Nuevo",
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
              "Buen estado",
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
              "Usado",
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
              "Mal",
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
              "Roto",
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
              "Desgastado",
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
              "Caducado",
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
              "Inservible",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "9",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Obsoleto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "10",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Sin comprar",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "11",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "En proceso compra",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "12",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Reposición",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "13",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Solicitar cambio",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "14",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Incompleto",
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
      color: Colors.greenAccent,
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
              "Nuevo",
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
              "Buen estado",
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
              "Usado",
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
              "Mal",
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
              "Roto",
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
              "Desgastado",
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
              "Caducado",
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
              "Inservible",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "9",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Obsoleto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "10",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Sin comprar",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "11",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "En proceso compra",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "12",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Reposición",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "13",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Solicitar cambio",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "14",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Incompleto",
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
      color: Colors.greenAccent,
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
              "Nuevo",
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
              "Buen estado",
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
              "Usado",
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
              "Mal",
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
              "Roto",
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
              "Desgastado",
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
              "Caducado",
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
              "Inservible",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "9",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Obsoleto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "10",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Sin comprar",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "11",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "En proceso compra",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "12",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Reposición",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "13",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Solicitar cambio",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "14",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Incompleto",
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
      color: Colors.greenAccent,
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
              "Nuevo",
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
              "Buen estado",
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
              "Usado",
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
              "Mal",
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
              "Roto",
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
              "Desgastado",
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
              "Caducado",
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
              "Inservible",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "9",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Obsoleto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "10",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Sin comprar",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "11",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "En proceso compra",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "12",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Reposición",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "13",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Solicitar cambio",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "14",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Incompleto",
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
      color: Colors.greenAccent,
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
              "Nuevo",
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
              "Buen estado",
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
              "Usado",
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
              "Mal",
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
              "Roto",
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
              "Desgastado",
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
              "Caducado",
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
              "Inservible",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "9",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Obsoleto",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "10",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Sin comprar",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "11",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "En proceso compra",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "12",
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Reposición",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "13",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Solicitar cambio",
            ),
          ],
        ),
      ),
      DropdownMenuItem(
        value: "14",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "Incompleto",
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
      color: Colors.greenAccent,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemaceite() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "A nivel",
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
              "Medio",
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
              "Bajo",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _valueaceite = value;
      });
    },

    value: _valueaceite,
    elevation: 2,

    style: TextStyle(
      color: Colors.greenAccent,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemdmanti() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "A nivel",
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
              "Medio",
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
              "Bajo",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _valuemanti = value;
      });
    },

    value: _valuemanti,
    elevation: 2,

    style: TextStyle(
      color: Colors.greenAccent,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemdireccion() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "A nivel",
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
              "Medio",
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
              "Bajo",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _valuedireccion = value;
      });
    },

    value: _valuedireccion,
    elevation: 2,

    style: TextStyle(
      color: Colors.greenAccent,
      fontSize: 13.0,
    ),
  );
  DropdownButton _itemfrenos() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            SizedBox(width: 10),
            Text(
              "A nivel",
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
              "Medio",
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
              "Bajo",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _valuefrenos = value;
      });
    },

    value: _valuefrenos,
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
                                onChanged: (val){
                                  setSelectedRadio(val);
                                },
                                value: 1,
                                groupValue: selectedRadio,
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
                                onChanged: (val){
                                  setSelectedRadio(val);
                                },
                                value: 2,
                                groupValue: selectedRadio,
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
                                onChanged: (val){
                                  setSelectedRadio(val);
                                },
                                value: 3,
                                groupValue: selectedRadio,
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
        ],
      ),
    );

  }
}
