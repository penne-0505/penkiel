import 'package:flutter/material.dart';

import 'package:penkiel/utils.dart';


class DataContent extends StatelessWidget {
  const DataContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 24, right: 24),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
      decoration: BoxDecoration(
        color: PenkielColors.bg,
        borderRadius: const BorderRadius.all(PenkielValues.borderRadius),
        border: Border.all(
          color: PenkielColors.dividerColor,
          strokeAlign: BorderSide.strokeAlignCenter,
          width: 1
        ),
      ),
      child: const Center(
        child: Column(
          children: <Widget>[
            DataCard(),
            DataCard(),
            DataCard(),
          ]
        ),
      ),
    );
  }
}

class DataCard extends StatelessWidget {
  const DataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: const BoxDecoration(
        color: PenkielColors.bg,
        borderRadius: BorderRadius.all(PenkielValues.borderRadius),
        boxShadow: [
          BoxShadow(
            color: PenkielColors.shadow,
            blurRadius: 1,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: const Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Name',
                  style: TextStyle(
                    color: PenkielColors.primary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: VerticalDivider(
              color: PenkielColors.dividerColor,
              width: 1,
            ),
          ),
          Expanded(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Name',
                hintStyle: TextStyle(
                  color: PenkielColors.secondary,
                  fontSize: 16,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: PenkielColors.dividerColor,
                    width: 1,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: PenkielColors.primary,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}