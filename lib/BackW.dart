import 'package:flutter/material.dart';

class BackW extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/pantalla-inicio.png'),
          )
      ),
    );
  }
}