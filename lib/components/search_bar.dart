import 'package:flutter/material.dart';
import 'package:penkiel/utils.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_updateState);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_updateState);
    _focusNode.dispose();
    super.dispose();
  }

  void _updateState() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: PenkielColors.bg,
        borderRadius: BorderRadius.circular(18),
        boxShadow: _isFocused
            ? [
                const BoxShadow(
                  color: PenkielColors.shadow,
                  blurRadius: 2,
                  offset: Offset(0.5, 2),
                ),
              ]
            : null,
      ),
      child: TextField(
        focusNode: _focusNode,
        decoration: const InputDecoration(
          fillColor: PenkielColors.bg,
          border: InputBorder.none,
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 12),
            child: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
