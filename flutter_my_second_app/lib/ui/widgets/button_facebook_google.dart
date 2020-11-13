import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonFacebook extends StatelessWidget {
 final Color color1;
 final Color color2;
 final String text ;
 final Color colorText ;
final Function clickedButton;
 final IconData _iconData;
  ButtonFacebook(this.color1,this.color2,this.text,this.colorText,this._iconData,this.clickedButton) ;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        clickedButton();
     },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      padding: EdgeInsets.all(0.0),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1,color2],
          ),
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
        child: Container(
          constraints:
              BoxConstraints(maxWidth: 300, minWidth: 88.0, minHeight: 40.0),
          // min sizes for Material buttons
          alignment: Alignment.center,
          child: Row(
             children: <Widget>[

               SizedBox(
                   width : 10
               ),
              Icon(  _iconData,size :20,color: Colors.white
              ),
              SizedBox(
                width : 40
              ),
              Text(
                text ,

                style: TextStyle(fontSize: 15, color: colorText
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
