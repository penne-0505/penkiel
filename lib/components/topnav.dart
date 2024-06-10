import 'package:flutter/material.dart';
import 'package:penkiel/utils.dart';


// TODO: hoverした時に、アンダーバーが表示されるようにする

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
      margin: const EdgeInsets.only(top: 24, bottom: 24, left: 24, right: 24),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: PenkielColors.bg,
        borderRadius: const BorderRadius.all(PenkielValues.borderRadius),
        border: Border.all(
          color: PenkielColors.dividerColor,
          strokeAlign: BorderSide.strokeAlignCenter,
          width: 1,
        ),
      ),
      child: const Stack(
        fit: StackFit.expand,
        children: [
          VaultInfo(),
          TopNavMisc(),
        ],
      ),
    );
  }
}

class VaultInfo extends StatefulWidget {
  const VaultInfo({
    super.key,
  });

  @override
  State<VaultInfo> createState() => _VaultInfoState();
}

class _VaultInfoState extends State<VaultInfo> {
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
              backgroundColor: WidgetStateProperty.all<Color>(PenkielColors.transparent),
              surfaceTintColor: WidgetStateProperty.all<Color>(PenkielColors.transparent),
              overlayColor: WidgetStateProperty.all<Color>(PenkielColors.transparent),
              shadowColor: WidgetStateProperty.all<Color>(PenkielColors.transparent),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 8),
                  child: const Icon(
                    Icons.folder,
                    color: PenkielColors.mask,
                    size: 30,
                  ),
                ),
                const Text(
                  'Vault 1',
                  style: TextStyle(
                    fontSize: 18,
                    color: PenkielColors.text,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    height: 0.8,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 2),
                  child: const Icon(
                    Icons.arrow_drop_down,
                    color: PenkielColors.mask,
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

class TopNavMisc extends StatelessWidget {
  const TopNavMisc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          iconSize: 28,
          color: PenkielColors.mask,
          icon: const Icon(Icons.notifications),
          onPressed: () {
            print('Notifications button tapped');
          },
        ),
        IconButton(
          iconSize: 28,
          color: PenkielColors.mask,
          icon: const Icon(Icons.settings),
          onPressed: () {
            print('Settings button tapped');
          },
        ),
        const VerticalDivider(
          color: PenkielColors.dividerColor,
          indent: 16,
          endIndent: 16,
          thickness: 1,
          width: 12,
        ),
        IconButton(
          iconSize: 44,
          color: PenkielColors.mask,
          icon: const Icon(Icons.account_circle),
          onPressed: () {
            print('Account button tapped');
          },
        ),
      ],
    );
  }
}
