import 'package:app_editesp/Chat/ChatW.dart';
import 'package:flutter/material.dart';


class ChatPage extends StatelessWidget {
  final String id;
  final String nombre;
  ChatPage({Key key, this.id, this.nombre}) : super (key: key);
  @override
  Widget build(BuildContext context) {
    print('id: $id');
    return new Container(
      color: Color(0xFFF8F8F8),
      child: Chat(id: id, nombre: nombre,),
    );
  }
}
