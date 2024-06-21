import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:penkiel/utils.dart';
import 'package:penkiel/components/painter/triangle_painter.dart';


class DataCard extends StatefulWidget {
  const DataCard({super.key});

  @override
  State<DataCard> createState() => _DataCardState();
}

class _DataCardState extends State<DataCard> {
  bool isHovered = false;
  bool showCopiedMessage = false;
  final TextEditingController _textEditingController = TextEditingController(text: 'hello');

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void copyText(String text) {
    Clipboard.setData(ClipboardData(text: text));
    setState(() {
      showCopiedMessage = true;
    });
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        showCopiedMessage = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 5, child: Container(clipBehavior: Clip.none)), // Spacer
          Expanded(
            flex: 12,
            child: MouseRegion(
              onEnter: (_) => setState(() => isHovered = true),
              onExit: (_) => setState(() => isHovered = false),
              child: Container(
                clipBehavior: Clip.none,
                margin: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: PenkielColors.bg,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    TextField(
                      controller: _textEditingController,
                      readOnly: true,
                      maxLines: 1,
                      onTap: () => copyText(_textEditingController.text),
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
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.copy),
                              onPressed: () => copyText(_textEditingController.text),
                              color: isHovered ? PenkielColors.v400 : PenkielColors.dividerColor,
                            ),
                            const SizedBox(width: 4), // Add this line (spacing between icons)
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {},
                              color: isHovered ? PenkielColors.v400 : PenkielColors.dividerColor,
                            ),
                          ],
                        )
                      ),
                      style: const TextStyle(
                        color: PenkielColors.text,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Campton',
                        letterSpacing: 0.05,
                      ),
                    ),
                    if (showCopiedMessage)
                      const Positioned(
                        top: -52,
                        left: 0,
                        right: 0,
                        child: CopiedToolTip(),
                      ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(flex: 5, child: Container(clipBehavior: Clip.none)), // Spacer
        ],
      ),
    );
  }
}


class CopiedToolTip extends StatelessWidget {
  const CopiedToolTip({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: 40,
          width: 60,
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: PenkielColors.grouped,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text(
            'コピーしました',
            style: TextStyle(
              color: PenkielColors.highContrastText,
              fontSize: 11,
              fontWeight: FontWeight.w400,
              fontFamily: 'Campton',
              letterSpacing: 0.05,
            ),
          ),
        ),
        Positioned(
          top: 39,
          left: 0,
          right: 0,
          child: CustomPaint(
            size: const Size(30, 10),
            painter: TrianglePainter(
              angle1: 90,
              angle2: 210,
              angle3: 330,
              height: 10,
              baseLength: 30,
              color: PenkielColors.grouped,
            )
          ),
        ),
      ],
    );
  }
}