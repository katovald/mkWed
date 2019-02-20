import 'package:app_editesp/pages/ChatPage.dart';
import 'package:app_editesp/pages/CheckTwo.dart';
import 'package:app_editesp/pages/home.dart';
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
    return Column(
      children: [

        Container(
          margin: EdgeInsets.all(28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[


              RaisedButton(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.supervised_user_circle),
                  ],
                ),
                color: Colors.deepOrange,
                padding: EdgeInsets.all(10.0),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePage(),
                  ),
                ),
              ),


              RaisedButton(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.message),
                  ],
                ),
                color: Colors.deepOrange,
                padding: EdgeInsets.all(10.0),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ChatPage(),
                  ),
                ),
              ),


            ],
          ),
        ),

        Container(
          child: Text(
              "Lista de Tareas",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),


        ),
        Expanded(child: Products(widget.startingProduct, deleteProduct: _deleteProduct,)),
      ],
    );
  }
}
