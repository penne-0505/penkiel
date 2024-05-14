import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:penkiel/utils.dart';

class DataCard extends StatelessWidget {
  const DataCard({
    super.key,
    this.cardType = 'normal',
    this.cardHeight = 80,
    });

    /// cardType must be one of 'normal', 'multiline', 'picture', 'file', or 'custom_height'.
    final String cardType;
    final double? cardHeight;

  // !注意: 切り替えを実装しただけ、実際のコンテンツは未実装
  @override
  Widget build(BuildContext context) {
    final Widget normalDataCard =
    Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 100),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: const BoxDecoration(
        color: PenkielColors.bg,
        borderRadius: BorderRadius.all(PenkielValues.borderRadius),
        boxShadow: [
          BoxShadow(
            color: PenkielColors.shadow,
            blurRadius: 2,
            offset: Offset(0.5, 2),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
            child: const Text(
              'Name',
              style: TextStyle(
                color: PenkielColors.mask,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.8,
              ),
            ),
          ),
          Container(
            width: 2,
            height: 32,
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: const BoxDecoration(
              color: PenkielColors.dividerColor,
            ),
          ),
          Container(
            width: 300,
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: DottedBorder(
              color: PenkielColors.dividerColor,
              strokeWidth: 1,
              borderType: BorderType.RRect,
              dashPattern: const [5, 5],
              radius: const Radius.circular(8),
              child: const TextField(
                maxLines: 1,
                minLines: 1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      )
    );
  

    // switch (cardType) {
    //   case 'normal':
    //     return normalDataCard;
    //   case 'multiline':
    //     return multilineDataCard;
    //   case 'picture':
    //     return pictureDataCard;
    //   case 'custom_height':
    //     return customHeightDataCard;
    //   case 'file':
    //     return fileDataCard;
    //   default:
    //     return normalDataCard;
    // }
    return normalDataCard;
  }
}