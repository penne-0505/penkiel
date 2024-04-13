import 'package:flutter/material.dart';


class SideBarTile extends StatefulWidget {
  const SideBarTile({super.key, required this.title, required this.rawIcon});

  final String title;
  final Icon rawIcon;

  @override
  State<SideBarTile> createState() => _SideBarTileState();
}

class _SideBarTileState extends State<SideBarTile> {
  

  void _onTap() {
    print('Tapped on ${widget.title}');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: ListTile(
        onTap: _onTap,
        horizontalTitleGap: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))
        ),
        title: Text(
          widget.title, 
          style: const TextStyle(
            color: Color(0xFF757578), 
            fontSize: 12, 
            fontFamily: 'Inter Display',
            fontWeight: FontWeight.w600,
            letterSpacing: 0.6, 
            height: 0.8,
          )
        ),
        leading: Icon(
          widget.rawIcon.icon, 
          key: widget.rawIcon.key,
          color: widget.rawIcon.color, 
          fill: widget.rawIcon.fill,
          grade: widget.rawIcon.grade,
          semanticLabel: widget.rawIcon.semanticLabel,
          shadows: widget.rawIcon.shadows,
          textDirection: widget.rawIcon.textDirection,
          applyTextScaling: widget.rawIcon.applyTextScaling,
          size: 22
        ),
      ),
    );
  }
}
