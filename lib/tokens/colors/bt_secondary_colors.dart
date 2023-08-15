import 'package:flutter/painting.dart';

class BTSecondaryColors extends ColorSwatch<int> {
  const BTSecondaryColors(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  static const int _secondaryValue = 0xFFFFAE1F;

  Color get minus1 => this[0]!;

  Color get normal => this[1]!;

  Color get plus1 => this[2]!;

  Color get onNormal => this[3]!;

  static const BTSecondaryColors secondaryColors = BTSecondaryColors(
    _secondaryValue,
    <int, Color>{
      0: Color(0xFFFFC96B),
      1: Color(_secondaryValue),
      2: Color(0xFF80560F),
      3: Color(0xFF262626),
    },
  );
}
