import 'package:flutter/material.dart';
import 'package:penkiel/utils.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: TextField(
        decoration: InputDecoration(
          fillColor: PenkielColors.bg,

          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
              color: isHovered ? PenkielColors.v400 : PenkielColors.dividerColor,
              width: 1,
            ),  
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
              color: PenkielColors.dividerColor,
              width: 1,
            ),
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 12),
            child: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
