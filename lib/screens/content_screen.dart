import 'package:flutter/material.dart';

import 'package:penkiel/widgets/specific/data_content.dart';
import 'package:penkiel/widgets/specific/data_list.dart';
import 'package:penkiel/widgets/specific/sidebar.dart';
import 'package:penkiel/widgets/specific/topnav.dart';

class MainContentPage extends StatefulWidget {
  const MainContentPage({
    super.key, 
    required this.title,
  });

  final String title;

  @override
  State<MainContentPage> createState() => _MainContentPageState();
}

class _MainContentPageState extends State<MainContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopNav(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1535) {
            return Row(
              children: <Widget>[
                const Expanded(
                  flex: 12,
                  child: SideBar(),
                ),
                Expanded(
                  flex: 18,
                  child: DataList(),
                ),
                const Expanded(
                  flex: 40,
                  child: DataContent()
                ),
              ],
            );
          } else {
            return const DataContent();
          }
        },
      ),
    );
  }
}
