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
      margin: const EdgeInsets.only(top: 12, bottom: 24, left: 24, right: 24),
      decoration: const BoxDecoration(
        color: ColorDB.veryPale,
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      padding: const EdgeInsets.all(24),
      constraints: const BoxConstraints(minWidth: 278, maxWidth: 278),
      child: Stack(
        children: <Widget>[
          ListView(
            controller: _scrollController,
            shrinkWrap: true,
            children: const <Widget>[
              SideBarTile(title: 'All Items', icon: Icon(Icons.apps, color: ColorDB.soft)),
              SideBarTile(title: 'Favorites', icon: Icon(Icons.star, color: ColorDB.soft)),
              Divider(
                color: ColorDB.pale, 
                thickness: 1, 
                height: 32,
                indent: 6,
                endIndent: 6,
              ),
              CategoryRow(title: 'Categories'),
              SideBarTile(title: 'Passwords', icon: Icon(Icons.key, color: ColorDB.soft)),
              SideBarTile(title: 'Documents', icon: Icon(Icons.description, color: ColorDB.soft)),
              SideBarTile(title: 'Images', icon: Icon(Icons.image, color: ColorDB.soft)),
              SideBarTile(title: 'Videos', icon: Icon(Icons.video_collection, color: ColorDB.soft)),
              SideBarTile(title: 'Others', icon: Icon(Icons.security, color: ColorDB.soft)),
              SizedBox(height: 24),
              CategoryRow(title: 'Tags'),
              SideBarTile(title: 'Tag 1', icon: Icon(Icons.local_offer, color: Color(0xffF2Bf5E))),
              SideBarTile(title: 'Tag 2', icon: Icon(Icons.local_offer, color: Color(0xff7D73A9))),
              SideBarTile(title: 'Tag 3', icon: Icon(Icons.local_offer, color: Color(0xff6CC2C6))),
              SideBarTile(title: 'Tag 4', icon: Icon(Icons.local_offer, color: Color(0xffFFA8A8))),
              SideBarTile(title: 'Tag 5', icon: Icon(Icons.local_offer, color: Color(0xffFFD3B6))),
              SideBarTile(title: 'Tag 6', icon: Icon(Icons.local_offer, color: Color(0xffB5EAD7))),
              SideBarTile(title: 'Tag 7', icon: Icon(Icons.local_offer, color: Color(0xffF2B5D4))),
              SideBarTile(title: 'Tag 8', icon: Icon(Icons.local_offer, color: Color(0xffF2E2B5))),
              SideBarTile(title: 'Tag 9', icon: Icon(Icons.local_offer, color: Color(0xffB5B5EA))),
              SideBarTile(title: 'Tag 10', icon: Icon(Icons.local_offer, color: Color(0xffEAB5EA))),
            ],
          ),
          const Positioned(
            width: 278,
            left: -50,
            bottom: -36,
            child: SideBarMisc(),
          ),
        ]
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
            color: ColorDB.soft,
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

class SideBarMisc extends StatefulWidget {
  const SideBarMisc({super.key});

  @override
  State<SideBarMisc> createState() => _SideBarMiscState();
}

class _SideBarMiscState extends State<SideBarMisc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 278,
      constraints: const BoxConstraints(minWidth: 278, maxWidth: 278),
      margin: const EdgeInsets.only(bottom: 24, left: 24, right: 24),
      decoration: const BoxDecoration(
        color: ColorDB.veryPale,
        // border: Border.fromBorderSide(BorderSide(color: ColorDB.pale, width: 1)),
      ),
      padding: const EdgeInsets.all(24),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SideBarTile(title: 'Archive', icon: Icon(Icons.archive, color: ColorDB.soft)),
          SideBarTile(title: 'Trash', icon: Icon(Icons.delete, color: ColorDB.soft)),
          SideBarTile(title: 'Settings', icon: Icon(Icons.settings, color: ColorDB.soft)),
        ],
      ),
    );
  }
}