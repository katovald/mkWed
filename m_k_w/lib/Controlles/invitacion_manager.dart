import 'package:flutter/material.dart';

import '../Models/invitaciones.dart';

class InvitacionManager extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InvitacionManagerState();
  }
}

class _InvitacionManagerState extends State<InvitacionManager> {
  List<String> _products = ['Invitacion'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Invitaciones();
  }

}