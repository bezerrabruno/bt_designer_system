import 'package:bt_designer_system/foundation/colors/bt_colors.dart';
import 'package:bt_designer_system/foundation/sizes/bt_size.dart';
import 'package:bt_designer_system/molecules/bt_text.dart';
import 'package:flutter/material.dart';

class BTButton extends StatelessWidget {
  final double? height;
  final double? width;
  final bool enabled;
  final bool isLoading;
  final Color? backgroundColor;
  final String? textButton;
  final void Function()? onTap;
  final Color? textColor;
  final Color? loadingColor;

  const BTButton({
    super.key,
    this.height,
    this.width,
    this.onTap,
    this.enabled = true,
    this.isLoading = false,
    this.textButton,
    this.backgroundColor,
    this.textColor,
    this.loadingColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: enabled ? backgroundColor ?? BTColors.primary : Colors.grey,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: SizedBox(
          height: height ?? BTSize.size6x,
          width: width ?? double.maxFinite,
          child: isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: loadingColor,
                  ),
                )
              : Center(
                  child: BTText(
                    data: textButton ?? '',
                    color: enabled
                        ? textColor ?? Colors.grey[300]
                        : BTColors.primary.onNormal,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
        ),
      ),
    );
  }
}
