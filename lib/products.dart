import 'package:app_editesp/pages/CheckTwo.dart';
import 'package:app_editesp/pages/ItemList.dart';
import 'package:app_editesp/swipe_widget.dart';
import 'package:flutter/material.dart';


class Products extends StatefulWidget {

  Products(this.products, {this.deleteProduct});
  final List<String> products; //List Variable 'products'
  final Function deleteProduct;


  @override
  State<StatefulWidget> createState() {

    return _ProductsState();
  }

}




//:::::::::::::::::::::::::::::::::::::::::::::::::::::: SPECIAL CLASS ENUM
enum MyDialogAction{
  yes,
  no,
  maybe
}
//::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::





//PRODUCTS
class _ProductsState extends State<Products> {


//::::::::::::::::::::::::::::::::::::::::::::::::::::::: POP-UPS EVENTS


  void _dialogResultAccept(int index, MyDialogAction value) {

    widget.products.removeAt(index);
    print(widget.products);

    Navigator.pop(context);


  }



  void _dialogResultCancel(MyDialogAction value) {

    Navigator.pop(context);
  }
//::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


  //--------------//////////////////////////////////////////METHOD _showAlert();

  void _showAlertFinish(index){

    /////////////////////////////////////
    AlertDialog dialog = new AlertDialog(
        content: new Text(
          "¿Terminar Tarea?",
          style: new TextStyle(fontSize: 30.0),),
        actions: <Widget>[


          new FlatButton(
              onPressed: (){


                _dialogResultAccept(index, MyDialogAction.yes);
                refreshList();


              },
              color: Colors.green,
              child: Column(
                children: <Widget>[
                  Icon(Icons.check_circle,color: Colors.white,)
                ],
              )
          ),

          new FlatButton(
              onPressed: (){_dialogResultCancel(MyDialogAction.no);},
              color: Colors.redAccent,
              child: Column(
                children: <Widget>[
                  Icon(Icons.cancel,color: Colors.white,)
                ],
              )
          ),




        ]
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


          new FlatButton(
              onPressed: (){},
              color: Colors.green,
              child: Column(
                children: <Widget>[
                  Icon(Icons.check_circle,color: Colors.white,)
                ],
              )
          ),

          new FlatButton(
              onPressed: (){_dialogResultCancel(MyDialogAction.no);},
              color: Colors.redAccent,
              child: Column(
                children: <Widget>[
                  Icon(Icons.cancel,color: Colors.white,)
                ],
              )
          ),



        ]
    );

    showDialog(
        context: context,
        child: dialog
    );
  }

  /////////////////////////////////////////////////////////////////// END METHOD




  //--------------//////////////////////////////////////////METHOD REFRESH

  Future<Null> refreshList() async{
    await Future.delayed(Duration(seconds: 1));

    setState((){
      widget.products;
    });

    return null;
  }


  /////////////////////////////////////////////////////////////////// END METHOD


  Widget _buildWorksItem(BuildContext context, int index) {



    return OnSlide(
      items: <ActionItems>[
        new ActionItems(icon: new IconButton(icon: new Icon(Icons.check_circle_outline), onPressed: () {},color: Colors.green,
        ), onPress: (){  _showAlertFinish(index);  }, backgroudColor: Color(0xff0B4E70)),
        new ActionItems(icon: new IconButton(icon: new Icon(Icons.call), onPressed: () {}, color: Colors.red,
        ), onPress: (){  _showAlertCall();         },  backgroudColor: Color(0xff0B4E70)),
        new ActionItems(icon: new IconButton( icon: new Icon(Icons.assignment),  onPressed: () {},color: Colors.blue,
        ), onPress: ()=> Navigator

            .push<bool>(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => CheckListTwo(
              widget.products[index]
            ),
          ),

        ).then((bool value){

          if(value){
            widget.deleteProduct(index);
          }

        }),


            backgroudColor: Color(0xff0B4E70)),
        /* new ActionItems(icon: new IconButton(  icon: new Icon(Icons.bookmark),
                  onPressed: () {},color: Colors.orange,
                ), onPress: (){},  backgroudColor: Colors.white),*/
      ],
      child: new Container(
        color: Color(0xff0B4E70),
        padding: const EdgeInsets.only(top:5.0),
        width: 200.0,
        height: 150.0,
        child: new Card(
          color:Colors.white70,
          child: new Row(
            children: <Widget>[
              Text(widget.products[index])
            ],
          ),
        ),
      ),
    );

  }

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
        
        child:Text(
          "No hay tareas por el momento",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        )
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
