// import 'package:commons/shared/utils/size_help.dart';
// import 'package:commons_dependencies/app.dart';
// import 'package:flutter/material.dart';

// class CustomToast {
//   static void showToast({
//     required BuildContext context,
//     required String message,
//     Color? cor,
//   }) {
//     final FToast flutterToast = FToast();
//     flutterToast.init(context);
//     flutterToast.showToast(
//       toastDuration: const Duration(seconds: 5),
//       child: CustomToastWidget(
//         message: message,
//         color: cor,
//       ),
//       positionedToastBuilder: (context, child) => Positioned.fill(
//         top: SizeHelp.getHeight(context) * 0.67,
//         child: child,
//       ),
//     );
//   }
// }

// class CustomToastWidget extends StatelessWidget {
//   final String message;
//   final Color? color;

//   const CustomToastWidget({
//     Key? key,
//     required this.message,
//     this.color,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(25.0),
//         color: color,
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             message,
//             textAlign: TextAlign.center,
//             style: TextStyle(color: VRColors.feedback.white, fontSize: 13.0),
//           )
//         ],
//       ),
//     );
//   }
// }
