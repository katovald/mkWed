import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/chimuelo.png',
  'assets/chimuelo5.png',
  'assets/chimuelo2.png',
  'assets/chimuelo3.png',
  'assets/chimuelo4.png',
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
