// import 'package:flutter/material.dart';
// import 'package:vrdesignsystemmobile/vrdesignsystemmobile.dart';

// class VRDialog extends StatelessWidget {
//   /// Icon
//   final String? icon;
//   final Color? iconColor;
//   final double? iconSize;

//   /// Title
//   final String? title;
//   final Color? titleColor;

//   /// Sub Title
//   final String? subTitle;
//   final Color? subTitleColor;

//   /// Body - generic body, accepting any widget
//   final Widget? body;

//   /// Button
//   final String? buttonText;
//   final void Function()? buttonOnPressed;
//   final bool? buttonReverse;
//   final bool? buttonVertical;

//   /// Button - secondary button
//   final String? subButtonText;
//   final void Function()? subButtonOnPressed;

//   const VRDialog({
//     super.key,
//     this.icon,
//     this.iconColor,
//     this.iconSize,
//     this.title,
//     this.titleColor,
//     this.subTitle,
//     this.subTitleColor,
//     this.body,
//     this.buttonText,
//     this.buttonOnPressed,
//     this.buttonReverse = false,
//     this.buttonVertical = false,
//     this.subButtonText,
//     this.subButtonOnPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       elevation: 0,
//       backgroundColor: VRColors.feedback.white,
//       child: Padding(
//         padding: const EdgeInsets.all(VRSpacings.spacing2x),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             icon != null
//                 ? Padding(
//                     padding: const EdgeInsets.only(
//                       bottom: VRSpacings.spacing1x,
//                     ),
//                     child: VRSvg(
//                       icon: icon,
//                       size: iconSize ?? VRSize.size5x,
//                       color: iconColor,
//                     ),
//                   )
//                 : const SizedBox(),
//             title != null
//                 ? Padding(
//                     padding: const EdgeInsets.only(
//                       bottom: VRSpacings.spacing1x,
//                     ),
//                     child: VRText(
//                       data: title!,
//                       color: titleColor,
//                       textAlign: TextAlign.center,
//                       style: VRTextStyle.titulo1BoldStyle,
//                     ),
//                   )
//                 : const SizedBox(),
//             subTitle != null
//                 ? Padding(
//                     padding: const EdgeInsets.only(
//                       bottom: VRSpacings.spacing2x,
//                     ),
//                     child: VRText(
//                       data: subTitle!,
//                       color: titleColor,
//                       textAlign: TextAlign.center,
//                     ),
//                   )
//                 : const SizedBox(),
//             body ?? const SizedBox(),
//             buttonVertical == false
//                 ? Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       buttonReverse != false
//                           ? Expanded(
//                               child: VRButton(
//                                 key: const Key("VRDialog_Button"),
//                                 textButton: buttonText,
//                                 onTap: buttonOnPressed,
//                               ),
//                             )
//                           : const SizedBox(),
//                       subButtonText != null && buttonReverse != false
//                           ? const VRSepareted(
//                               width: VRSpacings.spacing2x,
//                             )
//                           : const SizedBox(),
//                       subButtonText != null
//                           ? Expanded(
//                               child: VROutlineButton(
//                                 key: const Key("VRDialog_SubButton"),
//                                 textButton: subButtonText,
//                                 onTap: subButtonOnPressed,
//                               ),
//                             )
//                           : const SizedBox(),
//                       subButtonText != null && buttonReverse == false
//                           ? const VRSepareted(
//                               width: VRSpacings.spacing2x,
//                             )
//                           : const SizedBox(),
//                       buttonReverse == false
//                           ? Expanded(
//                               child: VRButton(
//                                 key: const Key("VRDialog_Button"),
//                                 textButton: buttonText,
//                                 onTap: buttonOnPressed,
//                               ),
//                             )
//                           : const SizedBox(),
//                     ],
//                   )
//                 : Column(
//                     children: [
//                       buttonReverse == false
//                           ? VROutlineButton(
//                               key: const Key("VRDialog_SubButton"),
//                               textButton: subButtonText,
//                               onTap: subButtonOnPressed,
//                             )
//                           : VRButton(
//                               key: const Key("VRDialog_Button"),
//                               textButton: buttonText,
//                               onTap: buttonOnPressed,
//                             ),
//                       const VRSepareted(
//                         height: VRSpacings.spacing1x,
//                       ),
//                       buttonReverse == false
//                           ? VRButton(
//                               key: const Key("VRDialog_Button"),
//                               textButton: buttonText,
//                               onTap: buttonOnPressed,
//                             )
//                           : VROutlineButton(
//                               key: const Key("VRDialog_SubButton"),
//                               textButton: subButtonText,
//                               onTap: subButtonOnPressed,
//                             ),
//                     ],
//                   )
//           ],
//         ),
//       ),
//     );
//   }
// }
