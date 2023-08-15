import 'package:flutter/painting.dart';

class BTFeedbackColors extends ColorSwatch<int> {
  const BTFeedbackColors(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  Color get error => this[0]!;

  Color get alert => this[1]!;

  Color get success => this[2]!;

  static const BTFeedbackColors feedbackColors = BTFeedbackColors(
    0xFFFFFFFF,
    <int, Color>{
      0: Color(0xFFD04B38),
      1: Color(0xFFFAB032),
      2: Color(0xFF0FB746),
    },
  );
}
