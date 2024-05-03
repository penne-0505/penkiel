import 'package:flutter/material.dart';

import 'package:penkiel/components/data_tile.dart';
import 'package:penkiel/components/search_bar.dart';
import 'package:penkiel/utils.dart';

class DataList extends StatelessWidget {
  DataList({super.key});

  final List<String> serviceNames = [
    'Facebook',
    'Google',
    'Twitter',
    'Instagram',
    'LinkedIn',
    'Snapchat',
    'TikTok',
    'Reddit',
    'Pinterest',
    'Tumblr',
    'WhatsApp',
    'Signal',
    'Telegram',
    'Skype',
    'Slack',
    'Discord',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 24, right: 24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: PenkielColors.grouped,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListView(
        children: <Widget>[
          const SearchField(),
          const SizedBox(height: 12),
          for (int i = 0; i < serviceNames.length; i++)
            DataTile(
              serviceName: serviceNames[i],
              email: 'john_smith@example.com',
              icon: const Icon(Icons.lock, size: 22, color: PenkielColors.mask),
              onPressed: () {
                debugPrint('Data tile tapped');
              },
          ),
        ],
      ),
    );
  }
}