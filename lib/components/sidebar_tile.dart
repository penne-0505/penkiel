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
        overlayColor: MaterialStateProperty.all<Color>(ColorDB.vPHover),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      child: SizedBox(
        height: 46,
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
                color: ColorDB.soft,
                fontSize: 13,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.6,
                height: 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
