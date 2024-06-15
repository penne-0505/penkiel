import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:penkiel/utils.dart';
import 'package:penkiel/components/data_card.dart';


class DataContent extends StatelessWidget {
  const DataContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: const EdgeInsets.only(bottom: 24, right: 24),
      padding: const EdgeInsets.only(bottom: 24),
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
                const Padding(
                  padding: EdgeInsets.only(top: 18, bottom: 24),
                  child: DataContentTitle(),
                ), // 将来的にはStackで重ねる(現在はデザイン面において課題が残るためcolumnで配置)
                ... List.generate(20, (index) => const DataCard()),
              ],
            ),
          ),
          
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
      color: PenkielColors.bg,
      child: Row(
        children: [
          Expanded(flex: 5, child: Container()), // Spacer
          Expanded(
            flex: 12,
            child: Container(
              decoration: const BoxDecoration(
                color: PenkielColors.bg,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/raster/icon.png',
                    fit: BoxFit.contain
                  ),
                  const SizedBox(width: 24),
                  const Text(
                    'Data',
                    style: TextStyle(
                      color: PenkielColors.v600,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Campton',
                      letterSpacing: 0.05,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(flex: 5, child: Container()), // Spacer
        ],
      ),
    );
  }
}
