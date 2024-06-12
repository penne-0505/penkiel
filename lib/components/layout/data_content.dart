
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:penkiel/utils.dart';
import '../data_card.dart';


class DataContent extends StatelessWidget {
  const DataContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: const EdgeInsets.only(bottom: 24, right: 24),
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      decoration: BoxDecoration(
        color: PenkielColors.bg,
        borderRadius: const BorderRadius.all(PenkielValues.borderRadius),
        border: Border.all(
          color: PenkielColors.dividerColor,
          strokeAlign: BorderSide.strokeAlignCenter,
          width: 1
        ),
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ... List.generate(20, (index) => const DataCard()),
              ],
            ),
          ),
          const DataContentTitle(),
        ],
      ),
    );
  }
}

class DataContentTitle extends StatelessWidget {
  const DataContentTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: PenkielColors.bg,
      child: Row(
        children: [
          Expanded(flex: 1, child: Container()), // Spacer
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: PenkielColors.bg,
                boxShadow: [
                  BoxShadow(
                    color: PenkielColors.shadow,
                    offset: Offset(0, 2),
                    blurRadius: 2,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/raster/icon.png',
                    width: 48,
                    height: 48,
                    fit: BoxFit.contain
                  ),
                  const SizedBox(width: 24),
                  const Text(
                    'Data',
                    style: TextStyle(
                      color: PenkielColors.v600,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Campton',
                      letterSpacing: 0.05,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(flex: 1, child: Container()), // Spacer
        ],
      ),
    );
  }
}