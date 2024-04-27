import 'dart:ui';
import 'package:flutter/material.dart';

class CustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.trackpad,
      };
}

class PenkielColors {

  ///<br /><h3>0xFFF2F2F2</h3><img src="https://colorhexa.com/f2f2f2.png" width="200px" height="80px" />
  static const Color v100 = Color(0xFFf2f2f2);

  ///<br /><h3>0xFFE6E6E6</h3><img src="https://colorhexa.com/e6e6e6.png" width="200px" height="80px" />
  static const Color v200 = Color(0xFFe6e6e6);

  ///<br /><h3>0xFFB3B3B3</h3><img src="https://colorhexa.com/b3b3b3.png" width="200px" height="80px" />
  static const Color v300 = Color(0xFFb3b3b3);

  ///<br /><h3>0xFF999999</h3><img src="https://colorhexa.com/999999.png" width="200px" height="80px" />
  static const Color v400 = Color(0xFF999999);

  ///<br /><h3>0xFF767676</h3><img src="https://colorhexa.com/767676.png" width="200px" height="80px" />
  static const Color v500 = Color(0xFF767676);

  ///<br /><h3>0xFF666666</h3><img src="https://colorhexa.com/666666.png" width="200px" height="80px" />
  static const Color v600 = Color(0xFF666666);

  ///<br /><h3>0xFF333333</h3><img src="https://colorhexa.com/333333.png" width="200px" height="80px" />
  static const Color v700 = Color(0xFF333333);

  ///<br /><h3>0xFF1A1A1A</h3><img src="https://colorhexa.com/1a1a1a.png" width="200px" height="80px" />
  static const Color v800 = Color(0xFF1a1a1a);

  static const Color bg = v100;
  static const Color card = v200;
  static const Color shadow = v700;
  static const Color grouped = v200;
  static const Color headline = v800;
  static const Color sentence = v700;
  static const Color disabledMask = v200;
  static const Color disabledBorder = v300;
  static const Color disabledText = v400;
  static const Color border = v300;
  static const Color dividerColor = v300;
  static const Color text = v700;
  static const Color mask = v600;
  static const Color highContrastText = v800;

  ///<h3>0x00ffffff</h3>
  static const Color transparent = Color(0x00ffffff);

  ///<br /><h3>value is opacity<br /><br />0xFFFFC96A</h3><img src="https://colorhexa.com/ffc96a.png" width="200px" height="80px" />
  static const Color primary = Color(0xFFFFC96A);
  static const Color primary100 = Color(0x1AFFC96A);
  static const Color primary200 = Color(0x33FFC96A);
  static const Color primary300 = Color(0x66FFC96A);
  static const Color primary500 = Color(0x99FFC96A);
  static const Color primary700 = Color(0xCCFFC96A);

  ///<br /><h3>value is opacity<br /><br />0xFF6BB3FF</h3><img src="https://colorhexa.com/6bb3ff.png" width="200px" height="80px" />
  static const Color secondary = Color(0xFF6BB3FF);
  static const Color secondary100 = Color(0x1A6BB3FF);
  static const Color secondary200 = Color(0x336BB3FF);
  static const Color secondary300 = Color(0x666BB3FF);
  static const Color secondary500 = Color(0x996BB3FF);
  static const Color secondary700 = Color(0xCC6BB3FF);

  ///<br /><h3>value is opacity<br /><br />0xFFE57373</h3><img src="https://colorhexa.com/ff6b6b.png" width="200px" height="80px" />
  static const Color error = Color(0xFFE57373);
  static const Color error100 = Color(0x1AE57373);
  static const Color error500 = Color(0x99E57373);
  static const Color error700 = Color(0xCCE57373);

  ///<br /><h3>value is opacity<br /><br />0xFF81C784</h3><img src="https://colorhexa.com/81c784.png" width="200px" height="80px" />
  static const Color success = Color(0xFF81C784);
  static const Color success100 = Color(0x1A81C784);
  static const Color success500 = Color(0x9981C784);
  static const Color success700 = Color(0xCC81C784);
}