import 'package:flutter/material.dart';
import 'package:penkiel/components/sidebar_tile.dart';


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
      margin: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: Color(0xFFF1F1F4),
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      padding: const EdgeInsets.all(24),
      constraints: const BoxConstraints(minWidth: 278, maxWidth: 278),
      child: ListView(
        controller: _scrollController,
        shrinkWrap: true,
        children: const <Widget>[
          SideBarTile(title: 'All Items', icon: Icon(Icons.apps, color: Color(0xff757578))),
          SideBarTile(title: 'Favorites', icon: Icon(Icons.star, color: Color(0xff757578))),
          Divider(
            color: Color(0xFFD8D8D8), 
            thickness: 1, 
            height: 32,
            indent: 6,
            endIndent: 6,
          ),
          CategoryRow(title: 'Categories'),
          SideBarTile(title: 'Passwords', icon: Icon(Icons.key, color: Color(0xff757578))),
          SideBarTile(title: 'Documents', icon: Icon(Icons.description, color: Color(0xff757578))),
          SideBarTile(title: 'Images', icon: Icon(Icons.image, color: Color(0xff757578))),
          SideBarTile(title: 'Videos', icon: Icon(Icons.video_collection, color: Color(0xff757578))),
          SideBarTile(title: 'Others', icon: Icon(Icons.security, color: Color(0xff757578))),
          SizedBox(height: 24),
          CategoryRow(title: 'Tags'),
          SideBarTile(title: 'Tag 1', icon: Icon(Icons.local_offer, color: Color(0xffF2Bf5E))),
          SideBarTile(title: 'Tag 2', icon: Icon(Icons.local_offer, color: Color(0xff7D73A9))),
          SideBarTile(title: 'Tag 3', icon: Icon(Icons.local_offer, color: Color(0xff6CC2C6))),
          SideBarTile(title: 'Tag 4', icon: Icon(Icons.local_offer, color: Color(0xffFFA8A8))),
          Divider(
            color: Color(0xFFD8D8D8), 
            thickness: 1, 
            height: 32,
            indent: 6,
            endIndent: 6,
          ),
          SideBarTile(title: 'Archive', icon: Icon(Icons.archive, color: Color(0xff757578))),
          SideBarTile(title: 'Trash', icon: Icon(Icons.delete, color: Color(0xff757578))),
          SideBarTile(title: 'Settings', icon: Icon(Icons.settings, color: Color(0xff757578))),
        ],
      ),
    );
  }
}

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key, required this.title, this.icon, this.button});

  final String title;
  final Icon? icon;
  final Widget? button;

  @override
  Widget build(BuildContext context) {
    final Widget content = Row(
      children: <Widget>[
        icon ?? Container(),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF757578),
            fontSize: 11,
            fontFamily: 'Inter',
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
