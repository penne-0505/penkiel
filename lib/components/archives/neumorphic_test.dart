import 'package:flutter/material.dart';

import 'package:penkiel/components/utils/utils.dart';

class DataCardNeumophic extends StatelessWidget {
  const DataCardNeumophic({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      height: 100,
      margin: const EdgeInsets.only(top: 12, bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 36),
      decoration: BoxDecoration(
        color: const Color(0xffEBEEF4),
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
