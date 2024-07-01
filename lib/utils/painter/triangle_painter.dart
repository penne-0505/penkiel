import 'dart:math';
import 'package:flutter/material.dart';

class TrianglePainter extends CustomPainter {
  final double angle1;
  final double angle2;
  final double angle3;
  final double height;
  final double baseLength;
  final bool isClockwise;
  final Color color;
  final Color borderColor;
  final double borderWidth;

  TrianglePainter({
    required this.angle1,
    required this.angle2,
    required this.angle3,
    required this.height,
    required this.baseLength,
    this.isClockwise = true,
    this.color = Colors.black,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final fillPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    final path = Path();

    final radians1 = angle1 * pi / 180;
    final radians2 = angle2 * pi / 180;
    final radians3 = angle3 * pi / 180;

    final sideLength = baseLength / 2;

    final x1 = size.width / 2;
    final y1 = size.height / 2;

    final x2 = x1 + sideLength * cos(radians1);
    final y2 = y1 + height / 2;

    final x3 = x1 + sideLength * cos(radians2);
    final y3 = y1 - height / 2;

    final x4 = x1 + sideLength * cos(radians3);
    final y4 = y1 - height / 2;

    path.moveTo(x2, y2);
    path.lineTo(x3, y3);
    path.lineTo(x4, y4);
    path.close();

    if (isClockwise) {
      canvas.drawPath(path, fillPaint);
      canvas.drawPath(path, borderPaint);
    } else {
      var reversePath = Path();
      reversePath.addPath(path, Offset.zero);
      reversePath = reversePath.transform(Matrix4.rotationZ(pi).storage);
      canvas.drawPath(reversePath, fillPaint);
    }
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) {
    return oldDelegate.angle1 != angle1 ||
        oldDelegate.angle2 != angle2 ||
        oldDelegate.angle3 != angle3 ||
        oldDelegate.height != height ||
        oldDelegate.baseLength != baseLength ||
        oldDelegate.isClockwise != isClockwise ||
        oldDelegate.color != color ||
        oldDelegate.borderColor != borderColor ||
        oldDelegate.borderWidth != borderWidth;
  }
}
