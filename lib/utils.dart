import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class CustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.trackpad,
      };
}


class ColorDB {
  /// F2BF5E (Yellow)
  /// ![](https://www.colorhexa.com/f2bf5e.png)
  static const Color primary = Color(0xFFF2BF5E);

  /// 5E9FF2 (Blue)
  /// ![](https://www.colorhexa.com/5e9ff2.png)
  static const Color secondary = Color(0xFF5E9FF2);

  /// FDFDFD (0/6)
  /// ![](https://www.colorhexa.com/fdfdfd.png)
  static const Color white = Color(0xFFFDFDFD);

  /// F1F1F4 (1/6)
  /// ![](https://www.colorhexa.com/f1f1f4.png)
  static const Color veryPale = Color(0xFFF1F1F4);

  /// D8D8D8 (2/6)
  /// ![](https://www.colorhexa.com/d8d8d8.png)
  static const Color pale = Color(0xFFD8D8D8);

  /// B4B4B7 (3/6)
  /// ![](https://www.colorhexa.com/b4b4b7.png)
  static const Color light = Color(0xFFB4B4B7);

  /// 757578 (4/6)
  /// ![](https://www.colorhexa.com/757578.png)
  static const Color soft = Color(0xFF757578);

  /// 515153 (5/6)
  /// ![](https://www.colorhexa.com/515153.png)
  static const Color dark = Color(0xFF515153);

  /// 272727 (6/6)
  /// ![](https://www.colorhexa.com/272727.png)
  static const Color black = Color(0xFF272727);

  /// 64D955 (Green)
  /// ![](https://www.colorhexa.com/64d955.png)
  static const Color success = Color(0xFF64D955);

  /// ED6871 (Red)
  /// ![](https://www.colorhexa.com/ed6871.png)
  static const Color danger = Color(0xFFED6871);

  /// FDFDFD (white)
  /// ![](https://www.colorhexa.com/fdfdfd.png)
  static const Color bg = white;
  
  /// 515153 (dark)
  /// ![](https://www.colorhexa.com/515153.png)
  static const Color text = dark;

  static final Color vPHover = pale.withOpacity(0.3);

  static const Color tp = Colors.transparent;
}
