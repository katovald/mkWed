import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';

const String defaultUserName = "Rafael";


class Chat extends StatefulWidget {
  @override
  State createState() => new ChatWindow();
}

class ChatWindow extends State<Chat> with TickerProviderStateMixin {
  File image;
  Future getImage() async {
    File picture = await ImagePicker.pickImage(
        source: ImageSource.camera, maxWidth: 300.0, maxHeight: 500.0);
    setState(() {
      image = picture;
    });
  }
  final List<Msg> _messages = <Msg>[];
  final TextEditingController _textController = new TextEditingController();
  bool _isWriting = false;

  @override
  Widget build(BuildContext ctx) {
    return new Expanded(child: Column(children: <Widget>[
      new Flexible(
          child: new ListView.builder(
            itemBuilder: (_, int index) => _messages[index],
            itemCount: _messages.length,
            reverse: true,
            padding: new EdgeInsets.all(6.0),
          )),
      new Divider(height: 1.0),
      new Container(
        child: _buildComposer(),
        decoration: new BoxDecoration(
            color: Color(0xFFE7E7E7),
        ),
      ),
    ]));
  }


  Widget _buildComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Color(0xFF2B52A0),),
      child: new Container(
          margin: const EdgeInsets.symmetric(horizontal: 9.0),
          child: new Row(
            children: <Widget>[
              new Flexible(
                child: new TextField(
                  maxLines: 3,
                  cursorColor: Color(0xFF626262),
                  cursorWidth: 5.0,
                  style: TextStyle(
                      color: Color(0xFF626262),
                      fontSize: 15.0
                  ),

                  decoration:
                  new InputDecoration.collapsed(

                    hintText: "Escribe un mensaje",
                    hintStyle: TextStyle(
                        color: Color(0xFF626262),
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),



                  controller: _textController,
                  onChanged: (String txt) {
                    setState(() {
                      _isWriting = txt.length > 0;
                    });
                  },
                  onSubmitted: _submitMsg,

                ),
              ),
              new Container(
                  margin: new EdgeInsets.symmetric(horizontal: 3.0),
              
                    child: IconButton(
                    onPressed: getImage,
                    icon: Icon(
                      Icons.camera_alt,
                      color: Color(0xFF373737),
                      ),
                  )
              ),
              new Container(
                  margin: new EdgeInsets.symmetric(horizontal: 3.0),
                  child: Theme.of(context).platform == TargetPlatform.iOS
                      ? new CupertinoButton(
                      child: new Text("Submit"),
                      onPressed: _isWriting ? () => _submitMsg(_textController.text)
                          : null
                  )
                      : new IconButton(
                    icon: Icon(
                      Icons.send,
                      color: Color(0xFF2B52A0),
                      ),
                    onPressed: _isWriting
                        ? () => _submitMsg(_textController.text)
                        : null,
                  )
              ),
            ],
          ),

      ),
    );
  }

  void _submitMsg(String txt) {
    _textController.clear();
    setState(() {
      _isWriting = false;
    });
    Msg msg = new Msg(
      txt: txt,
      animationController: new AnimationController(
          vsync: this,
          duration: new Duration(milliseconds: 600)
      ),
    );
    setState(() {
      _messages.insert(0, msg);
    });
    msg.animationController.forward();
  }

  @override
  void dispose() {
    for (Msg msg in _messages) {
      msg.animationController.dispose();
    }
    super.dispose();
  }

}

class Msg extends StatelessWidget {
  Msg({this.txt, this.animationController});

  final String txt;
  final AnimationController animationController;

  @override
  Widget build(BuildContext ctx) {
    return new SizeTransition(
      sizeFactor: new CurvedAnimation(
          parent: animationController, curve: Curves.easeOut),
      axisAlignment: 0.0,
      child: new Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(right: 18.0),
              child: new CircleAvatar(
                backgroundColor: Color(0xFF353535),
                  child: new Text(
                    defaultUserName[0],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w200
                    ),
                  )
              ),
            ),
            new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(defaultUserName,
                    style: TextStyle(
                        color: Color(0xFF185A9C),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                    ),),
                  new Container(
                    margin: const EdgeInsets.only(top: 6.0),
                    child: new Text(
                        txt,
                        style: TextStyle(
                           color: Color(0xFF626262),
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                        )
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
