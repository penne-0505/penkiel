import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:penkiel/utils.dart';

class DataCard extends StatefulWidget {
  const DataCard({super.key});

  @override
  State<DataCard> createState() => _DataCardState();
}

class _DataCardState extends State<DataCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHovered = false;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex: 1, child: Container(color: Colors.amber,)), // Spacer
            Expanded(
              flex: 3,
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: isHovered ? PenkielColors.primary : PenkielColors.dividerColor,
                      width: 1,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(
                      color: PenkielColors.primary,
                      width: 2,
                    ),
                  ),
                ),
                style: const TextStyle(
                  color: PenkielColors.text,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Campton',
                  letterSpacing: 0.05,
                ),
              ),
            ),
            Expanded(flex: 1, child: Container(color: Colors.amber,)), // Spacer
          ],
        ),
      ),
    );
  }
}