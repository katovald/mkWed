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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          margin: EdgeInsets.all(10.0),
        ),


        Container(
          margin: EdgeInsets.all(7.0),
          child: ButtonTheme(
            child:FlatButton(
              child: Image.asset('assets/logout.png', width:100.0 , height: 60.0),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomePage(),
                ),
              ),
            ),
          ),
        ),

        Container(
            margin: EdgeInsets.all(5.0),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                FlatButton(
                  child: Image.asset('assets/chat.png', width:100.0 , height: 60.0),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ChatPage(),
                    ),
                  ),
                ),

              ],
            )
        ),

        Expanded(child: Products(widget.startingProduct, deleteProduct: _deleteProduct,)),
      ],
    );
  }
}
