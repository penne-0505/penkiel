import 'package:flutter/material.dart';
import 'package:penkiel/components/sidebar_tile.dart';
import 'package:penkiel/utils.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 64,
      margin: const EdgeInsets.only(bottom: 24, left: 24, right: 24),
      decoration:BoxDecoration(
        color: PenkielColors.bg,
        borderRadius: const BorderRadius.all(PenkielValues.borderRadius),
        border: Border.all(
          color: PenkielColors.dividerColor,
          strokeAlign: BorderSide.strokeAlignCenter,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.all(24),
      constraints: const BoxConstraints(minWidth: 278, maxWidth: 278),
      child: ListView(
        controller: _scrollController,
        shrinkWrap: true,
        children: <Widget>[
          const SideBarTile(title: 'All Items', icon: Icon(Icons.apps, size: 22, color: PenkielColors.mask)),
          const SideBarTile(title: 'Favorites', icon: Icon(Icons.star, size: 22, color: PenkielColors.mask)),
          const SideBarTile(title: 'Recently Added', icon: Icon(Icons.access_time, size: 22, color: PenkielColors.mask)),
          const SizedBox(height: 10),
          const Divider(
            color: PenkielColors.dividerColor,
            indent: 6,
            endIndent: 6,
          ),
          const SizedBox(height: 12),
          const Text(
            'Categories',
            style: TextStyle(
              fontSize: 12,
              color: PenkielColors.text,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.6,
              height: 0.8,
            ),
          ),
          const SizedBox(height: 6),
          const SideBarTile(title: 'Passwords', icon: Icon(Icons.key, size: 22, color: PenkielColors.mask)),
          const SideBarTile(title: 'Documents', icon: Icon(Icons.description, size: 22, color: PenkielColors.mask)),
          const SideBarTile(title: 'Images', icon: Icon(Icons.image, size: 22, color: PenkielColors.mask)),
          const SideBarTile(title: 'Videos', icon: Icon(Icons.video_collection, size: 22, color: PenkielColors.mask)),
          const SideBarTile(title: 'Others', icon: Icon(Icons.security, size: 22, color: PenkielColors.mask)),
          const SizedBox(height: 24),
          const Text(
            'Tags',
            style: TextStyle(
              fontSize: 12,
              color: PenkielColors.text,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.6,
              height: 0.8,
            ),
          ),
          const SizedBox(height: 12),
          ...List<Widget>.generate(20, (index) {
            return SideBarTile(
              title: 'Tag ${index + 1}',
              icon: const Icon(Icons.local_offer),
            );
          }),
          const SideBarTile(title: 'This is test for very long length letters. Am I drawed right? Excuse me!?', icon: Icon(Icons.local_offer)),
        ]
      )
      );
  }
}

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key, required this.title, this.button});

  final String title;
  final Widget? button;

  @override
  Widget build(BuildContext context) {
    final Widget content = Row(
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: PenkielColors.mask,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.6,
            height: 0.8,
          ),
        ),
        button ?? Container(),
      ],
    );
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: content,
    );
  }
}
