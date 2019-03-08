import 'package:flutter/material.dart';

class BackWGeneral extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/pantalla_extra.png'),
          )
      ),
    );
  }
}