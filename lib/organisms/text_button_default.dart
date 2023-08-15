// import 'package:commons/shared/utils/size_help.dart';
// import 'package:commons_dependencies/app.dart';
// import 'package:flutter/material.dart';

// class TextButtonDefault extends StatelessWidget {
//   final Color? backgroundColor;
//   final Color? borderColor;
//   final Color? textColor;
//   final double? borderRadius;
//   final double? height;
//   final String? title;
//   final Function()? onPressed;
//   final String? icon;
//   final Color? iconColor;
//   final double? iconHeight;
//   final bool? disabled;

//   const TextButtonDefault(
//       {super.key,
//       this.backgroundColor,
//       this.borderColor,
//       this.borderRadius,
//       this.title = '',
//       this.onPressed,
//       this.height,
//       this.textColor,
//       this.icon,
//       this.iconColor,
//       this.iconHeight,
//       this.disabled = false});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: height ?? 50,
//       child: TextButton(
//         style: ButtonStyle(
//           backgroundColor:
//               MaterialStateProperty.all(backgroundColor ?? Colors.transparent),
//           shape: MaterialStateProperty.all(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//               side: BorderSide(
//                 color: disabled!
//                     ? VRColors.grey.minus1
//                     : borderColor ?? VRColors.primary,
//               ),
//             ),
//           ),
//         ),
//         onPressed: onPressed,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (icon != null)
//               Padding(
//                 padding: title == ''
//                     ? EdgeInsets.zero
//                     : const EdgeInsets.only(right: 16.0),
//                 child: SvgPicture.asset(
//                   icon!,
//                   height: iconHeight ?? SizeHelp.getWidth(context) * 0.055,
//                   color: iconColor ?? textColor,
//                 ),
//               ),
//             if (title != '')
//               Text(
//                 title ?? '',
//                 style: TextStyle(
//                   color:
//                       disabled! ? VRColors.grey : textColor ?? VRColors.primary,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                 ),
//               )
//           ],
//         ),
//       ),
//     );
//   }
// }
