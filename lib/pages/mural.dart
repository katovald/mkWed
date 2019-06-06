import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://firebasestorage.googleapis.com/v0/b/camsa-vpro.appspot.com/o/Periodico%20Mural%2Fchimuelo.png?alt=media&token=e53009d9-1a60-48a2-80a2-788c08417bc4',
  'https://firebasestorage.googleapis.com/v0/b/camsa-vpro.appspot.com/o/Periodico%20Mural%2Fchimuelo2.png?alt=media&token=5f927513-6492-40fd-af74-a18738085a02',
  'https://firebasestorage.googleapis.com/v0/b/camsa-vpro.appspot.com/o/Periodico%20Mural%2Fchimuelo3.png?alt=media&token=2ff38b3d-e180-4dd6-aa92-c3bfeeb3d83d',
  'https://firebasestorage.googleapis.com/v0/b/camsa-vpro.appspot.com/o/Periodico%20Mural%2Fchimuelo4.png?alt=media&token=2b04f70d-e0ab-4a15-91dc-e365534b0c67',
  'https://firebasestorage.googleapis.com/v0/b/camsa-vpro.appspot.com/o/Periodico%20Mural%2Fchimuelo5.png?alt=media&token=0a4d53cb-949f-4dd4-b686-e5a145725282',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

/*final List<String> imgList = [
  'assets/chimuelo.png',
  'assets/chimuelo5.png',
  'assets/chimuelo2.png',
  'assets/chimuelo3.png',
  'assets/chimuelo4.png',
];*/
int _current = 0;
final List child = map<Widget>(
  imgList,
      (index, url) {
    return Container(

      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(children: <Widget>[
          Image.network(url,
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
              (url) {
            return Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(0.0)),
                child: Image.network(
                  url,
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
                   (index, url) {
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
