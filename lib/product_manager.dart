import 'package:app_editesp/pages/ChatPage.dart';
import 'package:app_editesp/pages/CheckThree.dart';
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          margin: EdgeInsets.all(10.0),
        ),

        Row(
        children: [
        Container(
                  width: 90,
                  height: 40,
                  margin: EdgeInsets.all(16.0),
                  child: ButtonTheme(
                    child:
                    FlatButton(
                      onPressed: () => {
Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CheckListThree()),
  ),
                      },
                      color: Color(0xFFFF2661),
                      child: Row( // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                      Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                      ),
                      Text(
                      "Salir",
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

         Container(
                  width: 90,
                  height: 40,
                  margin: EdgeInsets.only(bottom: 16, top: 16),
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
    );
  }
}
