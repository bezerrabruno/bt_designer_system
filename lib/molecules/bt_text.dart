import 'package:flutter/material.dart';

class BTText extends StatelessWidget {
  final String data;
  final TextAlign? textAlign;
  final Color? color;
  final TextStyle? style;

  const BTText({
    super.key,
    required this.data,
    this.textAlign,
    this.color,
    this.style,
  }); // coverage:ignore-line

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      style: style,
    );
  }
}
