import 'package:flutter/material.dart';

import 'package:penkiel/utils.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: PenkielColors.bg,
        borderRadius: BorderRadius.all(Radius.circular(18)),
        boxShadow: [
          BoxShadow(
            color: PenkielColors.shadow,
            blurRadius: 2,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: const TextField(
        decoration: InputDecoration(
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