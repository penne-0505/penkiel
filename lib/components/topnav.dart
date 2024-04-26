import 'package:flutter/material.dart';
import 'package:penkiel/utils.dart';


class TopNav extends StatefulWidget implements PreferredSizeWidget{
  const TopNav({
    super.key
  });

  @override
  Size get preferredSize => const Size.fromHeight(130);
  @override
  State<TopNav> createState() => _TopNavState();
}

class _TopNavState extends State<TopNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.preferredSize.height,
      margin: const EdgeInsets.only(top: 24, bottom: 12, left: 24, right: 24),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: ColorDB.veryPale,
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Stack(
        children: [
          VaultInfo(),
          TopNavMisc(),
        ],
      ),
    );
  }
}

class TopNavMisc extends StatelessWidget {
  const TopNavMisc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            iconSize: 28,
            icon: const Icon(Icons.notifications, color: ColorDB.soft),
            onPressed: () {
              print('Notifications button tapped');
            },
          ),
          IconButton(
            iconSize: 28,
            icon: const Icon(Icons.settings, color: ColorDB.soft),
            onPressed: () {
              print('Settings button tapped');
            },
          ),
          const VerticalDivider(
            color: ColorDB.pale,
            indent: 16,
            endIndent: 16,
            thickness: 1,
            width: 12,
          ),
          IconButton(
            iconSize: 44,
            icon: const Icon(Icons.account_circle, color: ColorDB.soft),
            onPressed: () {
              print('Account button tapped');
            },
          ),
        ],
      ),
    );
  }
}

class VaultInfo extends StatelessWidget {
  const VaultInfo({
    super.key,
  });

  onPressed() {
    print('Vault button tapped');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FilledButton(
            onPressed: onPressed,
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(ColorDB.tp),
              backgroundColor: MaterialStateProperty.all(ColorDB.tp),
              foregroundColor: MaterialStateProperty.all(ColorDB.tp),
              surfaceTintColor: MaterialStateProperty.all(ColorDB.tp),
              shadowColor: MaterialStateProperty.all(ColorDB.tp),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  child: const Icon(
                    Icons.folder,
                    color: ColorDB.soft,
                    size: 30,
                  ),
                ),
                const Text(
                  'Vault 1',
                  style: TextStyle(
                    color: ColorDB.soft,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    height: 0.8,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 2),
                  child: const Icon(
                    Icons.arrow_drop_down,
                    color: ColorDB.soft,
                    size: 26,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
