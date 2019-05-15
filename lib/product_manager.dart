import 'package:app_editesp/pages/ChatPage.dart';
import 'package:app_editesp/pages/CheckThree.dart';
import 'package:app_editesp/pages/CheckTwo.dart';
import 'package:app_editesp/pages/home.dart';
import 'package:app_editesp/pages/reporte.dart';
import 'package:flutter/material.dart';
import './products.dart';

//STATEFUL
class ProductManager extends StatefulWidget { //Widget Class
  final List<String> startingProduct; //Variable String

  ProductManager(this.startingProduct) {
    print('[ProductManager Widget] Constructor');
  }//Constructor

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager Widget] createState()');
    return _ProductManagerState();
  }
}


class _ProductManagerState extends State<ProductManager> { //State Class


  //List<String> _products = [];

  /*@override
  void initState() {
    print('[ProductManager State] initState()');
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }*/

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  //////////////////////////////////::::::::::::::::::::: ADD Y DELETE PRODUCT

  void _addProduct(String product) {
    setState(() {
      widget.startingProduct.add(product);
    });
    print(widget.startingProduct);
  }

  void _deleteProduct(int index){
    setState(() {

      widget.startingProduct.removeAt(index);
    });
  }

  /////////////////////////////////////:::::::::::::::::::::::::::::::::::::::::

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_left),
          onPressed: () {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CheckListThree()),
  );
            },
          ),
        title: Text("Tareas",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontFamily: "Sabritas",
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF1D539B),
      ),
      endDrawer: Drawer(
        elevation: 10.0,
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Verificador'),
              accountEmail: Text('verificador@mail.com'),
              currentAccountPicture:
              Container(
                height: 120,
                width: 120,
                child:Image(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/ver ficacion2.png')),),
              decoration: BoxDecoration(color: Color(0xFF1D539B)),
            ),
            ListTile(
              leading: Icon(Icons.warning),
              title: Text('Reporte de siniestros'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => reporte_Siniestros()),
                );
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Cerrar sesión'),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
              },
            ),
            Divider(
              height: 2.0,
            ),
          ],
        ),
      ),
         body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Row(
        children: [

         Container(
                  width: 90,
                  height: 40,
                  margin: EdgeInsets.all(16),
                  child: ButtonTheme(
                    child:
                    FlatButton(
                      onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ChatPage(),
                     ),
                     ),
                      color: Color(0xFF1373DF),
                      child: Row( // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                      Icon(
                      Icons.chat,
                      color: Colors.white,
                      ),
                      Text(
                      "Chat",
                      style: TextStyle(
                        fontSize: 15,
                      color: Colors.white,
                        ),
                      )
                  ],
                ),
                  ),
                  ),
                ),
                ],
                ),

        Expanded(child: Products(widget.startingProduct, deleteProduct: _deleteProduct,)),
      ],
    ),
    );
  }
}
