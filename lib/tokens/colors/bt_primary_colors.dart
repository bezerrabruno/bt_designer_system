import 'package:flutter/painting.dart';

class BTPrimaryColors extends ColorSwatch<int> {
  const BTPrimaryColors(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  static const int _primaryValue = 0xFF027373;

  Color get minus1 => this[0]!;

  Color get normal => this[1]!;

  Color get plus1 => this[2]!;

  Color get onNormal => this[3]!;

  static const BTPrimaryColors primaryColors = BTPrimaryColors(
    _primaryValue,
    <int, Color>{
      0: Color(0xFF04BFBF),
      1: Color(_primaryValue),
      2: Color(0xFF014040),
      3: Color(0xFF262626),
    },
  );
}
