import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Custom Painter',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyPainter(),
    );
  }
}
class MyPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Lines'),
    ),
    body: CustomPaint(
    painter: ShapePainter(),
    child: Container(),
    ),
    lass ShapePainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    }

    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
    }
    }
    class ShapePainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
    var paint = Paint()
    ..color = Colors.teal
    ..strokeWidth = 5
    ..strokeCap = StrokeCap.round;

    Offset startingPoint = Offset(0, size.height / 2);
    Offset endingPoint = Offset(size.width, size.height / 2);

    canvas.drawLine(startingPoint, endingPoint, paint);
    }

    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
    }
    }
    class ShapePainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
    var paint = Paint()
    ..color = Colors.teal
    ..strokeWidth = 5
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round;

    var path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    canvas.drawPath(path, paint);
    }

    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
    }
    }
    class ShapePainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
    var paint = Paint()
    ..color = Colors.teal
    ..strokeWidth = 5
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, 100, paint);
    }

    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
    }
    }