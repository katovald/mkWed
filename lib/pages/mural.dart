import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
/*final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];*/
final List<String> imgList = [
  'assets/banner1.png',
  'assets/banner2.jpg',
  'assets/3.png',
  'assets/4.png',
  'assets/5.png',
];
int _current = 0;
final List child = map<Widget>(
  imgList,
      (index, i) {
    return Container(

      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(children: <Widget>[
          Image.asset(i,

            fit: BoxFit.fill,
            width: 1000,

          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
            ),
          ),
        ]),
      ),
    );
  },
).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

class Mural extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Mural> {
  @override
  Widget build(BuildContext context) {

    CarouselSlider getFullScreenCarousel(BuildContext mediaContext) {
      return
        CarouselSlider(
        viewportFraction: 1.0,
        aspectRatio: MediaQuery.of(mediaContext).size.aspectRatio,
        onPageChanged: (i) {
          setState(() {
            _current = i;
          });
        },
        items: imgList.map(
              (i) {
            return Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(0.0)),
                child: Image.asset(
                  i,
                  fit: BoxFit.fill,
                  width: 1000.0,
                ),
              ),
            );
          },
        ).toList(),
      );
    }
    return Scaffold(
     body: Stack(
       children: <Widget>[
         Container(
           child: Builder(builder: (context) {
             return Column(children: [
               getFullScreenCarousel(context),
             ]);
           }),
         ),
         Container(
           padding: EdgeInsets.only(top: 25.0),
         child:  IconButton(
             icon: Icon(Icons.arrow_back),
             color: Colors.white,
             iconSize: 25.0,
             onPressed: () {
               Navigator.pop(context);
             },
           ),
         ),
         Align(
           alignment: Alignment.bottomCenter,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: map<Widget>(
               imgList,
                   (index, i) {
                 return Container(
                   width: 8.0,
                   height: 8.0,
                   margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                   decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: _current == index
                           ? Color.fromRGBO(255, 255, 255, 0.9)
                           : Color.fromRGBO(0, 0, 0, 0.4)),
                 );
               },
             ),
           ),
         ),

       ],

     ),


    );

  }
}
