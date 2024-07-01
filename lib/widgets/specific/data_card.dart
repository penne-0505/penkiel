import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:penkiel/utils/utils.dart';

import '../common/custom_tool_tip.dart';


class DataCard extends StatefulWidget {
  const DataCard({super.key});

  @override
  State<DataCard> createState() => _DataCardState();
}

class _DataCardState extends State<DataCard> {
  bool isHovered = false;
  bool showToolTip = false;
  String toolTipMessage = '';
  bool isEditing = false;
  final TextEditingController _textEditingController = TextEditingController(text: 'hello');
  final FocusNode _focusNode = FocusNode();
  int cardType = 0; // 0: single line text, 1: multi line text, 2: image, 3: file

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void copyText(String text) {
    Clipboard.setData(ClipboardData(text: text));
    _showToolTip('コピーしました');
  }

  void _showToolTip(String message) {
    setState(() {
      showToolTip = true;
      toolTipMessage = message;
    });
    Future.delayed(const Duration(milliseconds: 1700), () {
      setState(() {
        showToolTip = false;
      });
    });
  }

  void toggleEditMode() {
    setState(() {
      isEditing = !isEditing;
      if (isEditing) {
        _focusNode.requestFocus();
        _showToolTip('編集モードです');
      } else {
        _focusNode.unfocus();
        _showToolTip('編集を終了しました');
      }
    });
  }

  Widget _buildCardContent() {
    switch (cardType) {
      case 0:
        return TextField(
          controller: _textEditingController,
          focusNode: _focusNode,
          readOnly: !isEditing,
          maxLines: 1,
          onTap: isEditing ? null : () => copyText(_textEditingController.text),
          decoration: _getInputDecoration('Single Line Text'),
          style: const TextStyle(
            color: PenkielColors.text,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: 'Campton',
            letterSpacing: 0.05,
          ),
        );
      case 1:
        return SizedBox(
          height: 100,
          child: TextField(
            controller: _textEditingController,
            focusNode: _focusNode,
            readOnly: !isEditing,
            maxLines: null,
            minLines: 3,
            onTap: isEditing ? null : () => copyText(_textEditingController.text),
            decoration: _getInputDecoration('Multi Line Text'),
            style: const TextStyle(
              color: PenkielColors.text,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'Campton',
              letterSpacing: 0.05,
              ),
            ),
        );
      case 2:
        return Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isHovered ? PenkielColors.v400 : PenkielColors.dividerColor,
              width: 1,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.image, size: 50, color: isHovered ? PenkielColors.v400 : PenkielColors.dividerColor),
              const SizedBox(height: 10),
              Text(
                'Image',
                style: TextStyle(
                  color: isHovered ? PenkielColors.highContrastText : PenkielColors.disabledText,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Campton',
                  letterSpacing: 0.05,
                ),
              ),
            ],
          ),
        );
      case 3:
        return Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isHovered ? PenkielColors.v400 : PenkielColors.dividerColor,
              width: 1,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.insert_drive_file, size: 40, color: isHovered ? PenkielColors.v400 : PenkielColors.dividerColor),
              const SizedBox(height: 10),
              Text(
                'File',
                style: TextStyle(
                  color: isHovered ? PenkielColors.highContrastText : PenkielColors.disabledText,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Campton',
                  letterSpacing: 0.05,
                ),
              ),
            ],
          ),
        );
      default:
        return const SizedBox.shrink();
    }
  }

  InputDecoration _getInputDecoration(String labelText) {
    return InputDecoration(
      labelText: labelText,
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
            onPressed: isEditing ? null : () => copyText(_textEditingController.text),
            color: isEditing ? PenkielColors.dividerColor : (isHovered ? PenkielColors.v400 : PenkielColors.dividerColor),
          ),
          const SizedBox(width: 4),
          IconButton(
            icon: Icon(isEditing ? Icons.check : Icons.edit),
            onPressed: toggleEditMode,
            color: isHovered ? PenkielColors.v400 : PenkielColors.dividerColor,
          ),
          const SizedBox(width: 4),
        ],
      ),
    );
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
                    _buildCardContent(),
                    if (cardType < 2) // テキストの場合のみコピー完了メッセージを表示
                      Positioned(
                        top: -38,
                        left: 0,
                        right: 0,
                        child: AnimatedOpacity(
                          opacity: showToolTip ? 1 : 0,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          child: CustomToolTip(message: toolTipMessage),
                        ),
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
