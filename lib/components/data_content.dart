import 'package:flutter/material.dart';

import 'package:penkiel/utils.dart';
import 'data_card.dart';
import 'neumorphic_test.dart';


class DataContent extends StatelessWidget {
  const DataContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 24, right: 24),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
      decoration: BoxDecoration(
        color: Color(0xffe7eaf1),
        borderRadius: const BorderRadius.all(PenkielValues.borderRadius),
        border: Border.all(
          color: PenkielColors.dividerColor,
          strokeAlign: BorderSide.strokeAlignCenter,
          width: 1
        ),
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // DataCard(),
            // DataCard(),
            // DataCard(),
            DataCardNeumophic()
          ]
        ),
      ),
    );
  }
}
