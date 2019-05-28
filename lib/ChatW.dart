import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/scheduler.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';



const String defaultUserName = "Rafael";


class Chat extends StatefulWidget {
  @override
  State createState() => new ChatWindow();
}

class ChatWindow extends State<Chat> with TickerProviderStateMixin {
  File imageFile;
  bool isLoading;
  String imageUrl;
  Future getImage() async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.camera);

    if (imageFile != null) {
      setState(() {
        isLoading = true;
      });
      uploadFile();
    }
  }
  Future getImage2() async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);

    if (imageFile != null) {
      setState(() {
        isLoading = true;
      });
      uploadFile();
    }
  }
  Future uploadFile() async {
    String fileName = DateTime.now().minute.toString();
    StorageReference reference = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask uploadTask = reference.putFile(imageFile);
    StorageTaskSnapshot storageTaskSnapshot = await uploadTask.onComplete;
    storageTaskSnapshot.ref.getDownloadURL().then((downloadUrl) {
      imageUrl = downloadUrl;
      _link(_chatTextController.text);
      setState(() {
        isLoading = false;
        //onSendMessage(imageUrl, 1);
      });
    }, onError: (err) {
      setState(() {
        isLoading = false;
      });
      //Fluttertoast.showToast(msg: 'Este archivo no es una imagen');
    });
  }
  TextEditingController _chatTextController =   TextEditingController();
  TextEditingController _nameTextController =  TextEditingController();
  ScrollController _scrollController =  ScrollController();

  bool _hasText = false;

  String _name = 'Rafael Márquezgi';

  void _link(String text) {
    _chatTextController.clear();
    Firestore.instance.collection('links').add({
      'name': _name,
      'message': text,
      'link':imageUrl,
      'time':  DateTime.now().runtimeType
    });
  }

  Widget buildChatList() {
    return  Expanded(
        child:  StreamBuilder(
            stream:Firestore.instance.collection('chats').snapshots(),
            builder: (context, snapshot2) {
              if (!snapshot2.hasData) return const Text(
                  'Cargando . . .',
                   style: TextStyle(
                       fontSize: 16.0,
                       fontWeight: FontWeight.w600,
                       color: Color(0xFF1D539B)
                   ),
              );
              return  StreamBuilder(
                  stream: Firestore.instance.collection('links').snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return const Text(
                        'Cargando . . .',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1D539B)
                      ),
                    );
                    return  ListView.builder(
                        controller: _scrollController,
                        itemCount: snapshot.data.documents.length,
                        padding: const EdgeInsets.only(top: 10.0),
                        itemBuilder: (context, index) {
                          SchedulerBinding.instance.addPostFrameCallback((duration) {
                            _scrollController.animateTo(
                              _scrollController.position.maxScrollExtent,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeOut,
                            );
                          });
                          DocumentSnapshot ds = snapshot.data.documents[index];
                          return buildChatBubbleIm(ds['name'], ds['message'], ds['link']);
                        });
                  });
            }));
  }

  Widget buildChatBar() {
    return  Container(
        padding:  EdgeInsets.all(15.0),
        color: Color(0xFFE9E9E9),
        child:  Row(
          children: <Widget>[
            Expanded(
                child:  TextField(
                  controller: _chatTextController,
                  decoration:
                  InputDecoration.collapsed(
                    hintText: "Manda tu mensaje",
                    hintStyle: TextStyle(color: Color(0xFFB1B1B1)),
                  ),
                  onChanged: (text) {
                    setState(() {
                      _hasText = text.length > 0;
                    });
                  },
                )),
            IconButton(
              icon:  Icon(Icons.send),
              color: Color(0xFF313131),
              onPressed: _hasText
                  ? () {
                _link(_chatTextController.text);
              }
                  : null,
            ),

          ],
        ));
  }
  Widget buildChatBubbleIm(String name, String message, String link) {
    const whiteText = const TextStyle(color: Colors.black87, fontSize: 15.0);

    return  Container(
      margin:  EdgeInsets.all(5.0),
      /*decoration:  BoxDecoration(
          color: Color(0xFF1D539B),
          borderRadius:  BorderRadius.all(const Radius.circular(8.0))),*/
      padding:  EdgeInsets.all(10.0),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "${name}: ",
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1D539B)
            ),
          ),
          Text(message, style: whiteText),
          Linkify(text: link, style: whiteText,
            linkStyle: TextStyle(color: Color(0xFF2266C2)),
            onOpen: (url) async {
              if (await canLaunch(link)) {
                await launch(link);
              } else {
                throw 'No pudo abrirse $link';
              }
            },

          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    promptName();
  }

  promptName() async {
    String name = await showDialog(
        context: context,
        builder: (buildContext) {
          return  SimpleDialog(
              contentPadding:  EdgeInsets.all(10.0),
              title: const Text('¿Cuál es tu nombre?'),
              children: <Widget>[
                Column(children: <Widget>[
                  TextField(
                      controller:_nameTextController,
                      decoration:
                      InputDecoration.collapsed(hintText: "Nombre")),
                  FlatButton(onPressed: () {
                    Navigator.pop(context, _nameTextController.text);
                  }, child:  Text('Ok'))
                ])
              ]);
        });

    this._name = name;
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon:  Icon(Icons.image),
            color: Colors.white,
            onPressed: (){
              getImage2();
            },
          ),
          IconButton(
            icon:  Icon(Icons.photo_camera),
            color: Colors.white,
            onPressed: (){
              getImage();
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: Text("Chat",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontFamily: "Sabritas",
          ),
        ),

        centerTitle: true,
        backgroundColor: Color(0xFF1D539B),
      ),
      body:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildChatList(),
            buildChatBar()],
        ),
      ),
    );
  }
}
