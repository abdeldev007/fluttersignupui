import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.30,
        size.width * 0.17, size.height * 0.10);
    //  path.quadraticBezierTo(size.width*0.20, size.height*0.3, size.width*0.25, size.height*0.90 );
    // path.quadraticBezierTo(size.width*0.40, size.height*0.40 , size.width*0.50, size.height*0.70 );
    // path.quadraticBezierTo(size.width*0.60, size.height*0.85 , size.width*0.65, size.height*0.65 );
    path.quadraticBezierTo(
        size.width * 0.99, size.height * 1, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    paint.color = colorThree;
    //  paint.color = colorTwo;
    canvas.drawShadow(path, Colors.black.withAlpha(100), 4.0, true);

    canvas.drawPath(path, paint);
/*
    path.lineTo(0, size.height *0.75);
    path.quadraticBezierTo(size.width* 0.10, size.height*0.70 ,   size.width*0.17, size.height*0.90 );
    path.quadraticBezierTo(size.width*0.20, size.height*0.3, size.width*0.25, size.height*0.90 );
    path.quadraticBezierTo(size.width*0.40, size.height*0.40 , size.width*0.50, size.height*0.70 );
    path.quadraticBezierTo(size.width*0.60, size.height*0.85 , size.width*0.65, size.height*0.65 );
    path.quadraticBezierTo(size.width*0.70, size.height*0.90 , size.width, 0);
    path.close();
    Gradient gradient=SweepGradient(
      startAngle: 0.9,
      endAngle: 34,
      tileMode: TileMode.repeated,
      colors: [Colors.blue,Colors.black]
    );


    Rect rect=Rect.fromLTWH(0.0,0.0,size.width,size.height );
    paint.shader = gradient.createShader(rect);
    */
    path = Path();
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.1, size.height * 0.11, size.width * 0.9, size.height);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawShadow(path, Colors.black.withAlpha(100), 4.0, true);
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.30);
    path.lineTo(size.width * 0.75, size.height);
    //   path.quadraticBezierTo(size.width*0.55, size.height*0.45 , size.width*0.75, size.height*0.9 );
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawShadow(path, Colors.black.withAlpha(90), 9.0, true);
    canvas.drawPath(path, paint);
    canvas.drawShadow(path, Colors.black.withAlpha(90), 9.0, true);
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


Color colorTwo = Color(0xFF0d47a1);
Color colorThree = Color(0xFF0d47a1);
class CurvePainterSquare extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    paint.color = colorThree;
    //  paint.color = colorTwo;

    path = Path();
    path.lineTo(0, size.height );
    path.lineTo(size.width, size.height*0.3 );
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
    canvas.drawShadow(path, Colors.black.withAlpha(100), 4.0, true);
    path = Path();
    path.lineTo(0, size.height*0.3 );
    path.lineTo(size.width, size.height );
    path.lineTo(size.width, 0);
    //   path.quadraticBezierTo(size.width*0.55, size.height*0.45 , size.width*0.75, size.height*0.9 );
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawShadow(path, Colors.black.withAlpha(90), 9.0, true);
    canvas.drawPath(path, paint);
    canvas.drawShadow(path, Colors.black.withAlpha(90), 9.0, true);
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
