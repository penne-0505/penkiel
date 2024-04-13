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
      child: ListView(
        controller: _scrollController,
        shrinkWrap: true,
        children: const <Widget>[
          SideBarTile(title: 'All Items', rawIcon: Icon(Icons.apps, color: Color(0xff757578))),
          SideBarTile(title: 'Favorites', rawIcon: Icon(Icons.star, color: Color(0xff757578))),
          Divider(
            color: Color(0xFFD8D8D8), 
            thickness: 1, 
            height: 32,
            indent: 6,
            endIndent: 6,
            ),
          CategoryRow(title: 'Categories'),
          SideBarTile(title: 'Passwords', rawIcon: Icon(Icons.key, color: Color(0xff757578))),
          SideBarTile(title: 'Documents', rawIcon: Icon(Icons.description, color: Color(0xff757578))),
          SideBarTile(title: 'Images', rawIcon: Icon(Icons.image, color: Color(0xff757578))),
          SideBarTile(title: 'Videos', rawIcon: Icon(Icons.video_collection, color: Color(0xff757578))),
          SideBarTile(title: 'Others', rawIcon: Icon(Icons.security, color: Color(0xff757578))),
          SizedBox(height: 24),
          CategoryRow(title: 'Tags'),
          SideBarTile(title: 'Tag 1', rawIcon: Icon(Icons.local_offer, color: Color(0xffF2Bf5E))),
          SideBarTile(title: 'Tag 2', rawIcon: Icon(Icons.local_offer, color: Color(0xff7D73A9))),
          SideBarTile(title: 'Tag 3', rawIcon: Icon(Icons.local_offer, color: Color(0xff6CC2C6))),
          SideBarTile(title: 'Tag 4', rawIcon: Icon(Icons.local_offer, color: Color(0xffFFA8A8))),
          Divider(
          color: Color(0xFFD8D8D8), 
          thickness: 1, 
          height: 32,
          indent: 6,
          endIndent: 6,
          ),
          SideBarTile(title: 'Archive', rawIcon: Icon(Icons.archive, color: Color(0xff757578))),
          SideBarTile(title: 'Trash', rawIcon: Icon(Icons.delete, color: Color(0xff757578))),
          SideBarTile(title: 'Settings', rawIcon: Icon(Icons.settings, color: Color(0xff757578))),
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
            fontSize: 12,
            fontFamily: 'Inter Display',
            fontWeight: FontWeight.w500,
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
