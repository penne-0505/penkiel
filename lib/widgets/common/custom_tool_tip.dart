import 'package:flutter/material.dart';
import 'package:penkiel/utils/painter/triangle_painter.dart';
import 'package:penkiel/utils/utils.dart';

class CustomToolTip extends StatelessWidget {
  final String message;

  const CustomToolTip({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: 32,
          width: message.length * 10 + 32,
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: PenkielColors.secondary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.check_circle_rounded, color: PenkielColors.v100, size: 16),
              const SizedBox(width: 8),
              Text(
                message,
                style: const TextStyle(
                  color: PenkielColors.v100,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Campton',
                  letterSpacing: 0.05,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 31,
          left: 0,
          right: 0,
          child: CustomPaint(
            painter: TrianglePainter(
              angle1: 90,
              angle2: 210,
              angle3: 330,
              height: 9,
              baseLength: 36,
              color: PenkielColors.secondary,
            )
          ),
        ),
      ],
    );
  }
}