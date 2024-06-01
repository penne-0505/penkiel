import 'package:flutter/material.dart';

import 'package:penkiel/utils.dart';

class DataCardNeumophic extends StatelessWidget {
  const DataCardNeumophic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 36),
      decoration: BoxDecoration(
        color: Color(0xffe7eaf1),
        borderRadius: const BorderRadius.all(Radius.circular(32)),
        boxShadow: [
          PenkielShadow().neumorphicBottom,
          PenkielShadow().neumorphicTop,
        ],
      ),
      child: const Text(
        'Neumorphic',
        style: TextStyle(
          color: PenkielColors.mask,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: 'Campton',
          letterSpacing: 0.9,
        ),
      ),
    );
  }
}