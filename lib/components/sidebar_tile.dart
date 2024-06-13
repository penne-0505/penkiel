import 'package:flutter/material.dart';

import 'package:penkiel/utils.dart';

class SideBarTile extends StatefulWidget {
  const SideBarTile({super.key, required this.title, required this.icon});

  final String title;
  final Icon icon;

  @override
  State<SideBarTile> createState() => _SideBarTileState();
}

class _SideBarTileState extends State<SideBarTile> {
  void _onTap() {
    print('Tapped on ${widget.title}');
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(PenkielColors.transparent),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      child: SizedBox(
        height: 24,
        child: Row(
          children: [
            Icon(
              widget.icon.icon,
              color: widget.icon.color,
              size: 22,
            ),
            const SizedBox(width: 10),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 13,
                color: PenkielColors.mask, // textでもいいけど、maskのほうが見栄え良い気が
                fontWeight: FontWeight.w500,
                height: 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
