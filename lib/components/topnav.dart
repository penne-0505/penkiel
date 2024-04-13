import 'package:flutter/material.dart';


class TopNav extends StatefulWidget implements PreferredSizeWidget{
  const TopNav({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);
  State<TopNav> createState() => _TopNavState();
}

class _TopNavState extends State<TopNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.preferredSize.height,
      color: const Color(0xFFf1f1f4),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.folder,
                  color: Color(0xFF757578),
                  size: 30,
                ),
              ),
              Text(
                'Vault 1',
                style: TextStyle(
                  color: Color(0xFF757578),
                  fontSize: 18,
                  fontFamily: 'Inter Display',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.6,
                  height: 0.8,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                iconSize: 28,
                icon: const Icon(Icons.notifications, color: Color(0xFF757578)),
                onPressed: () {
                  print('Notifications button tapped');
                },
              ),
              IconButton(
                iconSize: 28,
                icon: const Icon(Icons.settings, color: Color(0xFF757578)),
                onPressed: () {
                  print('Settings button tapped');
                },
              ),
              const VerticalDivider(
                color: Color(0xFFD8D8D8),
                indent: 16,
                endIndent: 16,
                thickness: 1,
                width: 12,
              ),
              IconButton(
                iconSize: 48,
                icon: const Icon(Icons.account_circle, color: Color(0xFF757578)),
                onPressed: () {
                  print('Account button tapped');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
