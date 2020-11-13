import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonUseEmailOrPhone extends StatelessWidget {
 final Color color1;
 final Color color2;
 final String text;

 final Color colorText;
final Function clickEmailPassword;
  ButtonUseEmailOrPhone(this.color1, this.color2, this.text, this.colorText, this.clickEmailPassword);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        clickEmailPassword();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      padding: EdgeInsets.all(0.0),
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(90.0)),
        ),
        child: Container(
          constraints:
              BoxConstraints(maxWidth: 250, minWidth: 88.0, minHeight: 40.0),
          // min sizes for Material buttons
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(fontSize: 15, color: colorText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
