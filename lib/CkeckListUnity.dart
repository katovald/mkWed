import 'package:flutter/material.dart';

class CheckListUnity extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return _CheckListUState();
  }

}

class _CheckListUState extends State<CheckListUnity>{
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
          //AQUIIIIIIIIII


          SizedBox(
            height: 10,
          ),

          Container(
//Diseño de la caja <>
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
//Diseño de la caja </>
//Titulo
                Text(
                  "Gasolina",
                  style: TextStyle(
                      fontSize: 21.0,
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold
                  ),
                ),
//Titulo</>
//Separador<>
                SizedBox(
                  height: 6,
                ),
//Separador</>
                Container(
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.grey, width: 1.0),
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
//Tanque Gasolina Titulo<>
                      Text(
                        'Gasolina Inicial',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
//Tanque Gasolina Titulo</>
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: <Widget>[
//Opciones Tanque<>

                          Row(
                            children: <Widget>[
                              Text(
                                "LLeno",
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
                                "Si",
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
                                "No",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
//Tarjeta Gasolina Titulo<>
                      Text(
                        '¿Tarjeta de Gasolina?',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
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
                                "No",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
//Cargo Gasolina Titulo<>
                      Text(
                        '¿Cargo Gasolina?',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
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
                                "No",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                    height: 132.0,  //Tamaño del contenedor
                    decoration: BoxDecoration(
                      //border: Border.all(color: Colors.grey, width: 1.0),
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(5.0)),
                    margin: EdgeInsets.only(left: 3.0, right: 3.0),
                    child: Column(
                      children: <Widget>[
//Titulo
                        Text(
                          'NO. Tarjeta de Gasolina',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),

                        TextField(
                          maxLines: 1, //Maximo de Lineas de Texto
                          cursorColor: Colors.white,
                          cursorWidth: 7.0,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0
                          ),
//Descripcion & Estilos
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
                    height: 132.0,  //Tamaño del contenedor
                    decoration: BoxDecoration(
                      //border: Border.all(color: Colors.grey, width: 1.0),
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(5.0)),
                    margin: EdgeInsets.only(left: 3.0, right: 3.0),
                    child: Column(
                      children: <Widget>[
//Titulo
                        Text(
                          'Saldo de Tarjeta',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),

                        TextField(
                          maxLines: 1, //Maximo de Lineas de Texto
                          cursorColor: Colors.white,
                          cursorWidth: 7.0,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0
                          ),
//Descripcion & Estilos
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
                    height: 132.0,  //Tamaño del contenedor
                    decoration: BoxDecoration(
                      //border: Border.all(color: Colors.grey, width: 1.0),
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(5.0)),
                    margin: EdgeInsets.only(left: 3.0, right: 3.0),
                    child: Column(
                      children: <Widget>[
//Titulo
                        Text(
                          'Hora de la Carga',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),

                        TextField(
                          maxLines: 1,  //Maximo de Lineas de Texto
                          cursorColor: Colors.white,
                          cursorWidth: 7.0,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0
                          ),
//Descripcion & Estilos
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
//Cuadros de Texto </>
//Caja de comentarios </>

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
//Info Titulo<>
                      Text(
                        '¿Es correcta la informacion?',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
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
                                "No",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
          //AQUIIIIIIIIII

          SizedBox(
            height: 10,
          ),

           Container(
             decoration: BoxDecoration(

               border: Border.all(
                 color: Colors.lightBlueAccent,
                 width: 1.5,
               ),
               borderRadius: BorderRadius.all(
                   Radius.circular(5.0)
               ),
             ),
             child: Column(
                children: <Widget>[

                  Text(
                    "Estacionamiento",
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
                          '¿Cuenta con fondo de estacionamientos?',
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
                                 onChanged: (e){},
                                 value: 1,
                                 groupValue: 1,
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
                                 onChanged: (e){},
                                 value: 1,
                                 groupValue: 1,
                               ),
                             ],
                           ),

                        /*   Row(
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
                      height: 120.0,
                      decoration: BoxDecoration(
                        //border: Border.all(color: Colors.grey, width: 1.0),
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(5.0)),
                      margin: EdgeInsets.only(left: 3.0, right: 3.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            '¿Cuánto?',
                            style: TextStyle(color: Colors.white, fontSize: 20.0),
                          ),

                          TextField(
                            maxLines: 1,
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


                  GestureDetector(
                    onTap:(){
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child:Container(
                      height: 120.0,
                      decoration: BoxDecoration(
                        //border: Border.all(color: Colors.grey, width: 1.0),
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(5.0)),
                      margin: EdgeInsets.only(left: 3.0, right: 3.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Número de ticket de estacionamiento',
                            style: TextStyle(color: Colors.white, fontSize: 20.0),
                          ),

                          TextField(
                            maxLines: 1,
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



                  GestureDetector(
                    onTap:(){
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child:Container(
                      height: 120.0,
                      decoration: BoxDecoration(
                        //border: Border.all(color: Colors.grey, width: 1.0),
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(5.0)),
                      margin: EdgeInsets.only(left: 3.0, right: 3.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Total en pesos',
                            style: TextStyle(color: Colors.white, fontSize: 20.0),
                          ),

                          TextField(
                            maxLines: 1,
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
                          '¿Es correcta la información?',
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
                                  onChanged: (e){},
                                  value: 1,
                                  groupValue: 1,
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

          Container(
            decoration: BoxDecoration(

              border: Border.all(
                color: Colors.lightBlueAccent,
                width: 1.5,
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(5.0)
              ),
            ),
            child: Column(
              children: <Widget>[

                Text(
                  "Accesorios",
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
                        'Cargador USB',
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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

                          /*   Row(
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
                           ),*/



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
                        'Tag',
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Guia roja',
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                              _itemDown3(),
                            ],
                          ),

                          /*   Row(
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
                           ),*/



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
                        'Lámpara',
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Paraguas',
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          /*   Row(
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
                           ),*/

                          Row(
                            children: <Widget>[
                              /*Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),*/
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Manos libres',
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          /*   Row(
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
                           ),*/

                          Row(
                            children: <Widget>[
                              /*Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),*/
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Red',
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          /*   Row(
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
                           ),*/

                          Row(
                            children: <Widget>[
                              /*Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),*/
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Extintor',
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          /*   Row(
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
                           ),*/

                          Row(
                            children: <Widget>[
                              /*Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),*/
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Gato',
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          /*   Row(
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
                           ),*/

                          Row(
                            children: <Widget>[
                              /*Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),*/
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Llave de cruz',
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          /*   Row(
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
                           ),*/

                          Row(
                            children: <Widget>[
                              /*Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),*/
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Señalamientos',
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          /*   Row(
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
                           ),*/
                          Row(
                            children: <Widget>[
                              /*Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),*/
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(5.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'kit de limpieza',
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
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
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),
                            ],
                          ),

                          /*   Row(
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
                           ),*/
                          Row(
                            children: <Widget>[
                              /*Radio(
                                onChanged: (e){},
                                value: 1,
                                groupValue: 1,
                              ),*/
                              _itemDown12(),
                            ],
                          ),


                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
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