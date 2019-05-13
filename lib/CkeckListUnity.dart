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
  var _valueaceite = "1";
  var _valuemanti = "1";
  var _valuedireccion = "1";
  var _valuefrenos = "1";
  var _valueGasolina = "1";

  DropdownButton _itemGasolina() => DropdownButton<String>(
    items: [
      DropdownMenuItem(
        value: "1",
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 10),
            Text(
              "Tanque Lleno",
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
              "3/4",
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
              "Medio Tanque",
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
              "1/4",
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
              "Tanque Vacio",
            ),
          ],
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _valueGasolina = value;
      });
    },

    value: _valueGasolina,
    elevation: 2,

    style: TextStyle(
      color: Color(0xFF2350A6),
      fontSize: 13.0,
    ),
  );
  //// MI LISTA </>
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
      color: Color(0xFF2350A6),
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
      color: Color(0xFF2350A6),
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
      color: Color(0xFF2350A6),
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
      color: Color(0xFF2350A6),
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
      color: Color(0xFF2350A6),
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
      color: Color(0xFF2350A6),
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
      color: Color(0xFF2350A6),
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
      color: Color(0xFF2350A6),
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
      color: Color(0xFF2350A6),
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
      color: Color(0xFF2350A6),
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
      color: Color(0xFF2350A6),
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
      color: Color(0xFF2350A6),
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
      color: Color(0xFF2350A6),
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
      color: Color(0xFF2350A6),
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
      color: Color(0xFF2350A6),
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
      color: Color(0xFF2350A6),
      fontSize: 13.0,
    ),
  );
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

    return Expanded(

      child: ListView(
        children: <Widget>[
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

                Text(
                  "Estatus General",
                  style: TextStyle(
                      fontFamily: "Sabritas",
                      fontSize: 21.0,
                      color: Color(0xFF00CCFF),
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
                      borderRadius: BorderRadius.circular(1.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Estado de la pintura',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
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
                                activeColor: Color(0xFF2350A6),
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
                                activeColor: Color(0xFF2350A6),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                "  Mal estado",
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
                              ),
                              Radio(
                                onChanged: (val){
                                  setSelectedRadio2(val);
                                },
                                value: 2,
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
                   height: 128.0,
                    decoration: BoxDecoration(
                      //border: Border.all(color: Colors.grey, width: 1.0),
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(0.0)),
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
                              fontSize: 18.0
                          ),
                          decoration: InputDecoration(
                            labelText: 'Llenar campo de texto',
                            labelStyle: TextStyle(
                                color: Color(0xFF4EA7DE),
                                fontWeight: FontWeight.w300
                            ),
                            fillColor: Colors.blueGrey,
                            prefixIcon: const Icon(
                              Icons.textsms,
                              color: Colors.white,
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
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
          //AQUIIIIIIIIII


          SizedBox(
            height: 10,
          ),

          Container(
//Diseño de la caja <>
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
//Diseño de la caja </>
//Titulo
                Text(
                  "Gasolina",
                  style: TextStyle(
                      fontSize: 21.0,
                      color: Color(0xFF00DCFF),
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
                      borderRadius: BorderRadius.circular(1.0)),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                    height: 132.0,  //Tamaño del contenedor
                    decoration: BoxDecoration(
                      //border: Border.all(color: Colors.grey, width: 1.0),
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(1.0)),
                    margin: EdgeInsets.only(left: 3.0, right: 3.0),
                    child: Column(
                      children: <Widget>[
//Titulo
                        Text(
                          'NO. Tarjeta de Gasolina',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),

                        TextField(
                          maxLines: 3,
                          cursorColor: Colors.white,
                          cursorWidth: 7.0,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0
                          ),
                          decoration: InputDecoration(
                            labelText: 'Llenar campo de texto',
                            labelStyle: TextStyle(
                                color: Color(0xFF4EA7DE),
                                fontWeight: FontWeight.w300
                            ),
                            fillColor: Colors.blueGrey,
                            prefixIcon: const Icon(
                              Icons.textsms,
                              color: Colors.white,
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
                        borderRadius: BorderRadius.circular(1.0)),
                    margin: EdgeInsets.only(left: 3.0, right: 3.0),
                    child: Column(
                      children: <Widget>[
//Titulo
                        Text(
                          'Saldo de Tarjeta',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),

                       TextField(
                          maxLines: 3,
                          cursorColor: Colors.white,
                          cursorWidth: 7.0,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0
                          ),
                          decoration: InputDecoration(
                            labelText: 'Llenar campo de texto',
                            labelStyle: TextStyle(
                                color: Color(0xFF4EA7DE),
                                fontWeight: FontWeight.w300
                            ),
                            fillColor: Colors.blueGrey,
                            prefixIcon: const Icon(
                              Icons.textsms,
                              color: Colors.white,
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
                        borderRadius: BorderRadius.circular(1.0)),
                    margin: EdgeInsets.only(left: 3.0, right: 3.0),
                    child: Column(
                      children: <Widget>[
//Titulo
                        Text(
                          'Hora de la Carga',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),

                         TextField(
                          maxLines: 3,
                          cursorColor: Colors.white,
                          cursorWidth: 7.0,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0
                          ),
                          decoration: InputDecoration(
                            labelText: 'Llenar campo de texto',
                            labelStyle: TextStyle(
                                color: Color(0xFF4EA7DE),
                                fontWeight: FontWeight.w300
                            ),
                            fillColor: Colors.blueGrey,
                            prefixIcon: const Icon(
                              Icons.textsms,
                              color: Colors.white,
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
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
          //AQUIIIIIIIIII

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

            child: Column(
              children: <Widget>[

                Text(
                  "Estacionamiento",
                  style: TextStyle(
                      fontSize: 21.0,
                      color: Color(0xFF00DCFF),
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
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                    height: 128.0,
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
                          maxLines: 3,
                          cursorColor: Colors.white,
                          cursorWidth: 7.0,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0
                          ),
                          decoration: InputDecoration(
                            labelText: 'Llenar campo de texto',
                            labelStyle: TextStyle(
                                color: Color(0xFF4EA7DE),
                                fontWeight: FontWeight.w300
                            ),
                            fillColor: Colors.blueGrey,
                            prefixIcon: const Icon(
                              Icons.textsms,
                              color: Colors.white,
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
                    height: 128.0,
                    decoration: BoxDecoration(
                      //border: Border.all(color: Colors.grey, width: 1.0),
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(1.0)),
                    margin: EdgeInsets.only(left: 3.0, right: 3.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Número de ticket de estacionamiento',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),

                         TextField(
                          maxLines: 3,
                          cursorColor: Colors.white,
                          cursorWidth: 7.0,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0
                          ),
                          decoration: InputDecoration(
                            labelText: 'Llenar campo de texto',
                            labelStyle: TextStyle(
                                color: Color(0xFF4EA7DE),
                                fontWeight: FontWeight.w300
                            ),
                            fillColor: Colors.blueGrey,
                            prefixIcon: const Icon(
                              Icons.textsms,
                              color: Colors.white,
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
                    height: 128.0,
                    decoration: BoxDecoration(
                      //border: Border.all(color: Colors.grey, width: 1.0),
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(1.0)),
                    margin: EdgeInsets.only(left: 3.0, right: 3.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Total en pesos',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),

                       TextField(
                          maxLines: 3,
                          cursorColor: Colors.white,
                          cursorWidth: 7.0,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0
                          ),
                          decoration: InputDecoration(
                            labelText: 'Llenar campo de texto',
                            labelStyle: TextStyle(
                                color: Color(0xFF4EA7DE),
                                fontWeight: FontWeight.w300
                            ),
                            fillColor: Colors.blueGrey,
                            prefixIcon: const Icon(
                              Icons.textsms,
                              color: Colors.white,
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
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
              color: Colors.white30,

              border: Border.all(
                color: Color(0xFFD5D5D5),
                width: 1.5,
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(0.0) //                 <--- border radius here
              ),
            ),

            child: Column(
              children: <Widget>[

                Text(
                  "Accesorios",
                  style: TextStyle(
                      fontSize: 21.0,
                      color: Color(0xFF00DCFF),
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
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Aceite',
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Anticongelante',
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Líquido de dirección',
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
                  margin: EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Líquido de frenos',
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(1.0)),
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
                                style: TextStyle(color: Colors.white, fontSize: 13.0),
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
        ],
      ),
    );
  }
}