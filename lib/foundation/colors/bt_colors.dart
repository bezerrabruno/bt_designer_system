import 'package:bt_designer_system/tokens/colors/bt_feedback_colors.dart';
import 'package:bt_designer_system/tokens/colors/bt_neutral_colors.dart';
import 'package:bt_designer_system/tokens/colors/bt_primary_colors.dart';
import 'package:bt_designer_system/tokens/colors/bt_secondary_colors.dart';
import 'package:flutter/painting.dart';

/// Classe de cores padrão das aplicações mobile VR
class BTColors extends ColorSwatch<int> {
  static const BTPrimaryColors primary = BTPrimaryColors.primaryColors;
  static const BTSecondaryColors secundary = BTSecondaryColors.secondaryColors;
  static const BTNeutralColors neutral = BTNeutralColors.neutralColors;
  static const BTFeedbackColors feedback = BTFeedbackColors.feedbackColors;

  const BTColors(int primary, Map<int, Color> swatch) : super(primary, swatch);
}
