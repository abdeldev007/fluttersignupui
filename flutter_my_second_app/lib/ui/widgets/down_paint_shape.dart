
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurvePainterDown extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();


    path.lineTo(0, size.height );

    path.quadraticBezierTo(size.width* 0.10, size.height*0.50 ,   size.width*0.17, size.height*0.90 );
    path.quadraticBezierTo(size.width*0.20, size.height, size.width*0.25, size.height*0.90 );
    path.quadraticBezierTo(size.width*0.40, size.height*0.40 , size.width*0.50, size.height*0.70 );
    path.quadraticBezierTo(size.width*0.60, size.height*0.85 , size.width*0.65, size.height*0.65 );
    path.quadraticBezierTo(size.width*0.70, size.height*0.6 ,size.width*0.65, size.height*0.5);


    path.close();

    paint.color=colorOne ;

    canvas.drawPath(path, paint);



    paint.color = colorOne;
    canvas.drawPath(path, paint);
    canvas.drawShadow(path, Colors.black.withAlpha(80),4.0, true);




  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
Color colorOne = Colors.blueAccent;
