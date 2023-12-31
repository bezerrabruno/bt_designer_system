import 'package:bt_designer_system/foundation/sizes/bt_spacings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Widget usado para exibição de arquivos SVG
class BTSvg extends StatelessWidget {
  final String icon;
  final double? size;

  const BTSvg({
    super.key,
    required this.icon,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: size ?? BTSpacings.spacing4x,
      fit: BoxFit.fitHeight,
    );
  }
}
