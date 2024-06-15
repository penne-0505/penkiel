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
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 5, child: Container()), // Spacer
          Expanded(
            flex: 12,
            child: MouseRegion(
              onEnter: (_) => setState(() => isHovered = true),
              onExit: (_) => setState(() => isHovered = false),
              child: Container(
                margin: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: PenkielColors.bg,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    labelText: 'Data',
                    fillColor: PenkielColors.bg,
                    labelStyle: TextStyle(
                      color: isHovered ? PenkielColors.highContrastText : PenkielColors.disabledText,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Campton',
                      letterSpacing: 0.05,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(
                        color: isHovered ? PenkielColors.v400 : PenkielColors.dividerColor,
                        width: 1,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(
                        color: PenkielColors.v400,
                        width: 1,
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
            ),
          ),
          Expanded(flex: 5, child: Container()), // Spacer
        ],
      ),
    );
  }
}
