import 'package:app_editesp/pages/CheckTwo.dart';
import 'package:app_editesp/swipe_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';
//STATEFUL WIDGET - CREATE ELEMENTS-ITEMS & LIST OF PRODUCTS
class Products extends StatefulWidget {

  Products(this.products, {this.deleteProduct});
  final List<String> products ; //Variable Type List
  final Function deleteProduct; //Variable Type Function

  @override
  State<StatefulWidget> createState() {
    return _ProductsState();
  }
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::: SPECIAL CLASS ENUM I
enum MyDialogAction{
  yes,
  no,
  maybe }
//::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//PRODUCTS
class _ProductsState extends State<Products> {

  //:::::::::::::::::::::::::::::::::::::::::::::::::::::::: POP-UPS EVENTS II
  void _dialogResultAccept(int index, MyDialogAction value) {
    widget.products.removeAt(index);
    print(widget.products);
    Navigator.pop(context);
  }

  void _dialogResultCancel(MyDialogAction value) {
    Navigator.pop(context);
  }

  _callMe() async {
    // Android
    const uri = 'tel:+521 55 37 01 34 31';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      // iOS
      const uri = 'tel:521-55-19-18-99-54';
      if (await canLaunch(uri)) {
        await launch(uri);
      } else {
        throw 'Could not launch $uri';
      }
    }
  }

  //::::::::::::::::::::::::::::::::::::::::::::::::::::::::::METHODS showAlert
  void _showAlertFinish(index){

    AlertDialog dialog = new AlertDialog(
         title: Text("Tarea Concluida"),
         content:  Text("¿Está seguro que terminaste la tarea?"),
       actions: <Widget>[
                                    FlatButton(
                                      child:  Text("Aceptar"),
                                      onPressed: () {
                                        /*Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context) => LoginPage()),
                                 );*/
                                         Navigator.of(context).pop();
                                      },
                                    ),

                                    FlatButton(
                                      child:  Text("Cancelar"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
    );

    showDialog(
        context: context,
        child: dialog
    );
    ///////////////////////////////////////////////////////////

  }

  void _showAlertCall() {
    AlertDialog dialog = new AlertDialog(
        content: new Text(
          "¿Llamar?",
          style: new TextStyle(fontSize: 30.0),),
        actions: <Widget>[


          new IconButton(
            onPressed: (){_callMe();},
            icon: Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
          ),

          new IconButton(
            onPressed: (){_dialogResultCancel(MyDialogAction.no);},
            icon: Icon(

              Icons.cancel,
              color: Colors.red,
            ),
          ),



        ]
    );

    showDialog(
        context: context,
        child: dialog
    );
  }

  //:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::METHOD REFRESH
  Future<Null> refreshList() async{
    await Future.delayed(Duration(seconds: 1));
    setState((){
      widget.products;
    });
    return null;
  }
  /////////////////////////////////////////////////////////////////// END METHOD


  Widget _buildWorksItem(BuildContext context, int index) {

    return Container(
      decoration: new BoxDecoration(
        
               border: Border.all(
                color: Color(0xFFD5D5D5),
                width: 1.5,
        ),
        borderRadius: BorderRadius.all(
            Radius.circular(1.0) //                 <--- border radius here
        ),
      ),
      margin: EdgeInsets.only(left: 9.0, right: 9.0, top:5.0),
      width: 175.0,
      height: 135.0,
      child: Card(
        color: Colors.black54,
        child: Column(
          children: <Widget>[
            Text(
              widget.products[index],
              style: TextStyle(
                      color: Colors.lightBlueAccent,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
              ),

            ),
            Text(
              "Descripción general de la Tarea",
              style: TextStyle(
                color: Colors.white, 
                fontSize: 16.0,
                fontWeight: FontWeight.w200
                ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[

                IconButton(
                  icon: Icon(
                    Icons.assignment,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator
                      .push<bool>(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => CheckListTwo(
                          widget.products[index]),
                    ),
                  )
                      .then((bool value) {
                    if (value) {
                      widget.deleteProduct(index);
                    }
                  }),
                ),

                IconButton(
                  icon:Icon(
                    Icons.check_circle,
                    color: Color(0xFF13E46F),
                  ),
                  onPressed: (){
                    _showAlertFinish(index);
                  },
                ),

                IconButton(
                  icon:Icon(
                    Icons.call,
                    color: Color(0xFF5ADEFF),
                    ),
                  onPressed: (){
                    _showAlertCall();
                  },
                ),


              ],
            )
          ],
        ),
      ),
    );

  } ///////////////////////////////////////////// END METHOD

  Widget _buildWorksList() {
    Widget productCards;
    if (widget.products.length > 0) {


      productCards = RefreshIndicator(
        child:ListView.builder(
            itemCount: widget.products.length,
            itemBuilder: _buildWorksItem
        ),
        onRefresh: refreshList,
      );
    } else {
      productCards = Center(
        child:Container(
            width: 330.0,
            height: 387.0,
            child: Center(
                child: Text(
                  "No hay tareas por el momento",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                )
            ),
        ),
      );
    }
    return productCards;
  } /////////////////////////////////// END METHOD

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return _buildWorksList();
  }
}
