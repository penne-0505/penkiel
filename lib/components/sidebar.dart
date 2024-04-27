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
      margin: const EdgeInsets.only(top: 12, bottom: 24, left: 24, right: 24),
      decoration: const BoxDecoration(
        color: PenkielColors.grouped,
        borderRadius: BorderRadius.all(Radius.circular(18)),
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
          const SizedBox(height: 24),
          const ExpansionTile(
            // TODO: ExpansionTileの扱い考える
            initiallyExpanded: true,
            title: Text(
              'Categories',
              style: TextStyle(
                fontSize: 12,
                color: PenkielColors.text,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.6,
                height: 0.8,
              ),
            ),
            children: [
              SideBarTile(title: 'Passwords', icon: Icon(Icons.key, size: 22, color: PenkielColors.mask)),
              SideBarTile(title: 'Documents', icon: Icon(Icons.description, size: 22, color: PenkielColors.mask)),
              SideBarTile(title: 'Images', icon: Icon(Icons.image, size: 22, color: PenkielColors.mask)),
              SideBarTile(title: 'Videos', icon: Icon(Icons.video_collection, size: 22, color: PenkielColors.mask)),
              SideBarTile(title: 'Others', icon: Icon(Icons.security, size: 22, color: PenkielColors.mask)),
            ],
          ),
          const SizedBox(height: 24),
          ExpansionTile(
            initiallyExpanded: true,
            title: const Text(
              'Tags',
              style: TextStyle(
                fontSize: 12,
                color: PenkielColors.text,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.6,
                height: 0.8,
              ),
            ),
            children: List.generate(20, (index) {
              return SideBarTile(
                title: 'Tag ${index + 1}',
                icon: const Icon(Icons.local_offer),
              );
            }),
          ),
        ],
      ),
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
