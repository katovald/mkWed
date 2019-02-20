import 'package:flutter/material.dart' show BoxDecoration, BuildContext, Color, Container, FractionalOffset, LinearGradient, Stack, StatelessWidget, Widget;

class BackW extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        GradientBack(),
      ],
    );
  }

}

class GradientBack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: new BoxDecoration(
        gradient: LinearGradient(
            colors:[
              Color(0xff0B4E70),
              Color(0xff0D587E),
            ],
            begin: const  FractionalOffset(1.0, 1.0),
            end: const FractionalOffset(1.0, 0.9)
        ),
      ),
    );
  }
}