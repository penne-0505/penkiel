import 'package:flutter/material.dart';

import 'package:penkiel/utils.dart';


class DataTile extends StatelessWidget {
  const DataTile({
    super.key,
    required this.serviceName,
    required this.email,
    required this.icon,
    required this.onPressed,
  });

  final String serviceName;
  final String email;
  final Icon icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(PenkielValues.borderRadius),
          ),
        ),
      ),
      onPressed: () => onPressed(),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: <Widget>[
            icon,
            const SizedBox(width: 12),
            Text(
              serviceName,
              style: const TextStyle(
                fontSize: 14,
                color: PenkielColors.text,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Text(
              email,
              style: const TextStyle(
                fontSize: 11,
                color: PenkielColors.mask,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: 12)
          ],
        ),
      ),
    );
  }
}