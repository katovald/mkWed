import 'package:flutter/material.dart';

class MKButton extends StatelessWidget {
  final String title;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback onPressed;
  final Color color;
  final Color splashColor;
  final Color borderColor;
  final double borderWidth;

  MKButton(
      {this.title,
      this.textColor,
      this.fontSize,
      this.fontWeight,
      this.onPressed,
      this.color,
      this.splashColor,
      this.borderColor,
      this.borderWidth});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FlatButton(
      onPressed: onPressed,
      splashColor: splashColor,
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Text(
          title,
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            decoration: TextDecoration.none,
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: "OpenSans",
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(
          color: borderColor,
          width: borderWidth,
        ),
      ),
    );
  }
}
