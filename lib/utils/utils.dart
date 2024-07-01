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

  ///<br /><h3>0xFFffdfdfd</h3><img src="https://colorhexa.com/fdfdfd.png" width="200px" height="80px" />
  static const Color v100 = Color(0xFFfdfdfd);

  ///<br /><h3>0xFFf4f4f4</h3><img src="https://colorhexa.com/f4f4f4.png" width="200px" height="80px" />
  static const Color v200 = Color(0xFFf4f4f4);

  ///<br /><h3>0xFFc0c0c0</h3><img src="https://colorhexa.com/c0c0c0.png" width="200px" height="80px" />
  static const Color v300 = Color(0xFFc0c0c0);

  ///<br /><h3>0xFF999999</h3><img src="https://colorhexa.com/999999.png" width="200px" height="80px" />
  static const Color v400 = Color(0xFF999999);

  ///<br /><h3>0xFF767676</h3><img src="https://colorhexa.com/767676.png" width="200px" height="80px" />
  static const Color v500 = Color(0xFF767676);

  ///<br /><h3>0xFF666666</h3><img src="https://colorhexa.com/666666.png" width="200px" height="80px" />
  static const Color v600 = Color(0xFF666666);

  ///<br /><h3>0xFF444444</h3><img src="https://colorhexa.com/444444.png" width="200px" height="80px" />
  static const Color v700 = Color(0xFF444444);

  ///<br /><h3>0xFF2e2e2e</h3><img src="https://colorhexa.com/2e2e2e.png" width="200px" height="80px" />
  static const Color v800 = Color(0xFF2e2e2e);

  /// v100
  static const Color bg = v100;
  /// v200
  static const Color card = v200;
  /// v800 with 25% opacity
  static const Color shadow = Color(0x3f2e2e2e); // 25% opacity of v800
  /// v200
  static const Color grouped = v200;
  /// v800
  static const Color headline = v800;
  /// v700
  static const Color sentence = v700;
  /// v200
  static const Color disabledMask = v200;
  /// v300
  static const Color disabledBorder = v300;
  /// v400
  static const Color disabledText = v400;
  /// v300
  static const Color border = v300;
  /// v300
  static const Color dividerColor = v300;
  /// v700
  static const Color text = v700;
  /// v500
  static const Color mask = v500;
  /// v800
  static const Color highContrastText = v800;

  ///<br /><h3>0xFFFBFDFF</h3><img src="https://colorhexa.com/fbfdff.png" width="200px" height="80px" />
  static const Color blendedSecff = Color(0xFFFBFDFF);

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

class PenkielValues {
  static const Radius borderRadius = Radius.circular(16);
  static const double borderWidth = 1;

  static const double margin = 24;
  static const double padding = 24;

}

class PenkielShadow {
  BoxShadow neumorphicBottom = const BoxShadow(
    color: Color(0xffa3b1c6),
    offset: Offset(5, 5),
    blurRadius: 8,
    spreadRadius: 0,
  );

  
  BoxShadow neumorphicTop = const BoxShadow(
    color: Color(0xFFfafbff),
    offset: Offset(-5, -5),
    blurRadius: 8,
    spreadRadius: 0,
  );

  BoxShadow general = const BoxShadow(
    color: Color(0x3f000000),
    offset: Offset(2, 3),
    blurRadius: 8,
    spreadRadius: 0,
  );
}
