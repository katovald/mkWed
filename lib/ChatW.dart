import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';


const String defaultUserName = "Rafael";


class Chat extends StatefulWidget {
  @override
  State createState() => new ChatWindow();
}

class ChatWindow extends State<Chat> with TickerProviderStateMixin {
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
            color: Colors.black54,
        ),
      ),
    ]));
  }


  Widget _buildComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Colors.greenAccent),
      child: new Container(
          margin: const EdgeInsets.symmetric(horizontal: 9.0),
          child: new Row(
            children: <Widget>[
              new Flexible(
                child: new TextField(
                  maxLines: 3,
                  cursorColor: Colors.white,
                  cursorWidth: 10.0,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0
                  ),

                  decoration:
                  new InputDecoration.collapsed(

                    hintText: "Envía un mensaje",
                    hintStyle: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold
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
                  child: Theme.of(context).platform == TargetPlatform.iOS
                      ? new CupertinoButton(
                      child: new Text("Submit"),
                      onPressed: _isWriting ? () => _submitMsg(_textController.text)
                          : null
                  )
                      : new IconButton(
                    icon: new Icon(Icons.send),
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
          duration: new Duration(milliseconds: 800)
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
                backgroundColor: Colors.black54,
                  child: new Text(
                    defaultUserName[0],
                    style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
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
                        color: Colors.greenAccent,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                    ),),
                  new Container(
                    margin: const EdgeInsets.only(top: 6.0),
                    child: new Text(
                        txt,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
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
