import 'package:flutter/material.dart';

class CustomShape extends CustomPainter{

  CustomShape({
   required this.shapeColor
});
  Color shapeColor ;
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = shapeColor
      ..strokeWidth = 20;

    var path1 = Path()
      ..moveTo(0,0)
      ..lineTo(0,140)
      ..quadraticBezierTo(size.width/2,250,size.width,140)
      ..lineTo(size.width,0);

    canvas.drawPath(path1,paint);
    canvas.drawColor(Colors.white,BlendMode.colorBurn);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}