import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CenteredText extends StatelessWidget {
  final  String _text;

  final  double _padding;

  final  Color _color;

  final  double _fontSize;

  final  String font ;

  CenteredText(this._text, this._padding, this._color, this._fontSize,this.font);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(_padding),
      child: Text(
        _text,
        style: TextStyle(
            fontSize: _fontSize,
            color: _color,
          //  fontWeight: FontWeight.bold,
            fontFamily: font

            /*    shadows: [

            Shadow(
              offset: Offset(1.0, 2.0),
              blurRadius: 1.0,
              color: Colors.blueGrey,
            ),
          ],

       */
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
