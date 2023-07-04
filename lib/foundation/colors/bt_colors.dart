import 'package:bt_designer_system/tokens/colors/bt_feedback_colors.dart';
import 'package:bt_designer_system/tokens/colors/bt_primary_colors.dart';
import 'package:flutter/painting.dart';

/// Classe de cores padrão das aplicações mobile VR
class BTColors extends ColorSwatch<int> {
  static const BTPrimaryColors primary = BTPrimaryColors.primaryColors;
  static const BTFeedbackColors feedback = BTFeedbackColors.feedback;

  const BTColors(int primary, Map<int, Color> swatch) : super(primary, swatch);
}
