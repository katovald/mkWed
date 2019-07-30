import 'package:flutter/material.dart';

import 'mk_flat_button.dart';

class MKAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onPressed;

  MKAlertDialog({this.title, this.content, this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      contentPadding: EdgeInsets.all(5.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
      title: Text(
        title,
        softWrap: true,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.none,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: "openSans",
        ),
      ),
      content: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              content,
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                decoration: TextDecoration.none,
                fontSize: 16,
                fontWeight: FontWeight.w300,
                fontFamily: "OpenSans",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: MKButton(
                title: "OK",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                textColor: Colors.black12,
                onPressed: () {
                  onPressed();
                  Navigator.of(context).pop();
                },
                splashColor: Colors.black12,
                borderColor: Colors.black12,
                borderWidth: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
