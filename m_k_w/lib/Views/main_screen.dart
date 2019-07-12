import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MainScreen extends StatefulWidget {
  final FirebaseUser firebaseUser;

  MainScreen({this.firebaseUser});

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scafoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    print(widget.firebaseUser);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scafoldKey,
      appBar: new AppBar(
        elevation: 0.5,
        leading: new IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => _scafoldKey.currentState.openDrawer()),
        title: Text('Inicio'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Encabezado'),
            ),
            ListTile(
              title: Text('Salir'),
              onTap: () {
                _logOut();
                _scafoldKey.currentState.openEndDrawer();
              },
            )
          ],
        ),
      ),
      body: StreamBuilder(builder: Auth.getUser()),
    );
  }

  void _logOut() async {
    Auth.signOut();
  }
}
