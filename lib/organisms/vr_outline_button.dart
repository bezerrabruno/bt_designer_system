import 'package:bt_designer_system/foundation/colors/bt_colors.dart';
import 'package:bt_designer_system/foundation/sizes/bt_size.dart';
import 'package:bt_designer_system/molecules/bt_text.dart';
import 'package:flutter/material.dart';

class BTOutlineButton extends StatelessWidget {
  final double? height;
  final double? width;
  final bool enabled;
  final bool isLoading;
  final Color? borderColor;
  final String? textButton;
  final void Function()? onTap;
  final Color? textColor;
  final Color? loadingColor;

  const BTOutlineButton({
    super.key,
    this.height,
    this.width,
    this.onTap,
    this.enabled = true,
    this.isLoading = false,
    this.textButton,
    this.borderColor,
    this.textColor,
    this.loadingColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Container(
          height: height ?? BTSize.size6x,
          width: width ?? double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              color: enabled ? borderColor ?? BTColors.primary : Colors.black,
              width: 2,
            ),
          ),
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
                        ? textColor ?? BTColors.primary
                        : Colors.grey[700],
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
        ),
      ),
    );
  }
}
