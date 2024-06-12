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
    'Zoom',
    'Microsoft',
    'Apple',
    'Amazon',
    'Netflix',
    'Spotify',
    'YouTube',
    'Twitch',
    'PayPal',
    'Ebay',
    'Shopify',
    'Etsy',
    'Wix',
    'Squarespace',
    'WordPress',
    'Testforlonglonglongletters!amIdrawed??Hello!?',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24, right: 24),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: PenkielColors.bg,
        borderRadius: const BorderRadius.all(PenkielValues.borderRadius),
        border: Border.all(
          color: PenkielColors.dividerColor,
          strokeAlign: BorderSide.strokeAlignCenter,
          width: 1,
        ),
      ),
      child: Stack(
        children: [
          ListView(
            children: <Widget>[
              const SizedBox(height: 72),
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
          const SearchField(),
        ],
      ),
    );
  }
}