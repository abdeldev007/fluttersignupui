import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ButtonLogIn extends StatelessWidget {
  final String _text;
final Function buttonPressed ;
  ButtonLogIn(this._text,this.buttonPressed);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
         buttonPressed ();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      padding: EdgeInsets.all(0.0),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [ Color(0xFF5471d2) ,Color(0xFF0d47a1),Color(0xFF002071)  ]
          ),
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(
              maxWidth: 200, minWidth: 88.0, minHeight: 40.0),
          // min sizes for Material buttons
          alignment: Alignment.center,
          child: Text(_text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
      ),
    );
  }
}
