import 'package:flutter/painting.dart';

class BTNeutralColors extends ColorSwatch<int> {
  const BTNeutralColors(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  static const int _neutralValue = 0xFF262626;

  Color get minus1 => this[0]!;

  Color get normal => this[1]!;

  Color get plus1 => this[2]!;

  static const BTNeutralColors neutralColors = BTNeutralColors(
    _neutralValue,
    <int, Color>{
      0: Color(0xFFBFBFBF),
      1: Color(_neutralValue),
      2: Color(0xFF000000),
    },
  );
}
