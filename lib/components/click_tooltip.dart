import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CopyMessageDemo extends StatefulWidget {
  const CopyMessageDemo({super.key});

  @override
  State<CopyMessageDemo> createState() => _CopyMessageDemoState();
}

class _CopyMessageDemoState extends State<CopyMessageDemo> {
  bool _showMessage = false;

  void _copyText(String text) {
    Clipboard.setData(ClipboardData(text: text));
    setState(() {
      _showMessage = true;
    });
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _showMessage = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          GestureDetector(
            onTap: () => _copyText('コピーしたいテキスト'),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.grey[300],
              child: const Text('ここをタップしてコピー'),
            ),
          ),
          if (_showMessage)
            Positioned(
              top: -20,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.green[300],
                child: const Text('コピーしました！'),
              ),
            ),
        ],
      ),
    );
  }
}