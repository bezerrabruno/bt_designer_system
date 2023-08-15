import 'package:bt_designer_system/foundation/sizes/bt_spacings.dart';
import 'package:flutter/material.dart';

/// Widget usado para separação/espaçamento de widgets
class BTSepareted extends StatelessWidget {
  final double? height;
  final double? width;

  const BTSepareted({
    super.key,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? BTSpacings.spacing2x,
      width: width ?? BTSpacings.spacing2x,
    );
  }
}
