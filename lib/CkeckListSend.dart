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

  bool _Variable;

  void set_Vatiable(bool variable){
    _Variable = variable;
  }

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

    return Container(
      decoration: new BoxDecoration(
        color: Colors.blueGrey,
        border: Border.all(
          width: 2.0,
        ),
        borderRadius: BorderRadius.all(
            Radius.circular(5.0) //                 <--- border radius here
        ),
      ),
      margin: EdgeInsets.all(20.0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(value: _isChecked, onChanged:(bool value){onChanged(value);}),
              Text(
                'Campo uno has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Checkbox(value: _isChecked2, onChanged:(bool value){onChangedValue2(value);}),
              Text(
                'Campo dos has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),


            ],
          ),

          Row(
            children: <Widget>[
              Checkbox(value: _isChecked3, onChanged:(bool value){onChangedValue3(value);}),
              Text(
                'Campo tres has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),


            ],
          ),

          Row(
            children: <Widget>[
              Checkbox(value: _isChecked4, onChanged:(bool value){onChangedValue4(value);}),
              Text(
                'Campo cuatro has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),


            ],
          ),

          Row(
            children: <Widget>[
              Checkbox(value: _isChecked5, onChanged:(bool value){onChangedValue5(value);}),
              Text(
                'Campo cinco has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),


            ],
          ),

          Row(
            children: <Widget>[
              Checkbox(value: _isChecked6, onChanged:(bool value){onChangedValue6(value);}),
              Text(
                'Campo seis has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),

            ],
          ),


          Row(
            children: <Widget>[
              Checkbox(value: _isChecked7, onChanged:(bool value){onChangedValue7(value);}),
              Text(
                'Campo siete has click',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),

            ],
          ),
        ],
      ),
    );

  }
}