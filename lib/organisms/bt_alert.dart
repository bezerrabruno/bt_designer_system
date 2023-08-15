// import 'package:commons_dependencies/app.dart';
// import 'package:commons_dependencies/modular.dart';
// import 'package:flutter/material.dart';

// class Alert {
//   static Future<void> error(
//     context, {
//     Key? key,
//     String title = 'ERRO',
//     String label = '',
//     String icon = 'assets/comuns/atencao.svg',
//     String buttonTitle = 'TENTAR NOVAMENTE',
//     bool isUpperCase = true,
//     Function()? buttonFunc,
//   }) async {
//     await showDialog(
//         barrierColor: Colors.transparent,
//         context: context,
//         builder: (context) {
//           return dialog(
//             context,
//             key,
//             title,
//             label,
//             icon,
//             VRColors.primary,
//             false,
//             buttonTitle,
//             null,
//             isUpperCase,
//             buttonFunc,
//             null,
//           );
//         });
//   }

//   static Future<void> success(
//     context, {
//     Key? key,
//     String title = 'SUCESSO',
//     String label = '',
//     String icon = 'assets/comuns/circulo_check.svg',
//     String buttonTitle = 'OK',
//     bool isUpperCase = true,
//     Function()? buttonFunc,
//   }) async {
//     await showDialog(
//         barrierColor: Colors.transparent,
//         context: context,
//         builder: (context) {
//           return dialog(
//             context,
//             key,
//             title,
//             label,
//             icon,
//             VRColors.feedback,
//             false,
//             buttonTitle,
//             null,
//             isUpperCase,
//             buttonFunc,
//             null,
//           );
//         });
//   }

//   static void warning(
//     context, {
//     Key? key,
//     bool barrierDismissible = true,
//     String title = '',
//     String label = '',
//     String icon = 'assets/comuns/atencao.svg',
//     String button1Title = 'VOLTAR',
//     String button2Title = 'VOLTAR',
//     bool isUpperCase = true,
//     Function()? buttonFunc1,
//     Function()? buttonFunc2,
//     bool utilizaSegundoBotao = true,
//   }) async {
//     await showDialog(
//         context: context,
//         barrierColor: Colors.transparent,
//         barrierDismissible: barrierDismissible,
//         builder: (context) {
//           return dialog(
//             context,
//             key,
//             title,
//             label,
//             icon,
//             VRColors.primary,
//             utilizaSegundoBotao,
//             button1Title,
//             button2Title,
//             isUpperCase,
//             buttonFunc1,
//             buttonFunc2,
//           );
//         });
//   }

//   static void custom(
//     context, {
//     Key? key,
//     String title = '',
//     String label = '',
//     String icon = '',
//     Color? iconColor,
//     bool isUpperCase = true,
//     String button1Title = '',
//     String button2Title = '',
//     bool secondButton = false,
//     Function()? buttonFunc1,
//     Function()? buttonFunc2,
//   }) async {
//     await showDialog(
//         barrierColor: Colors.transparent,
//         context: context,
//         builder: (context) {
//           return dialog(
//             context,
//             key,
//             title,
//             label,
//             icon,
//             iconColor,
//             secondButton,
//             button1Title,
//             button2Title,
//             isUpperCase,
//             buttonFunc1,
//             buttonFunc2,
//           );
//         });
//   }
// }

// Widget dialog(
//   BuildContext context,
//   Key? key,
//   String title,
//   String label,
//   String icon,
//   Color? iconColor,
//   bool secondButton,
//   String button1Title,
//   String? button2Title,
//   bool isUpperCase,
//   Function()? buttonFunc1,
//   Function()? buttonFunc2, {
//   bool pop = true,
// }) {
//   return WillPopScope(
//     onWillPop: () => Future.value(pop),
//     child: Dialog(
//       key: key,
//       backgroundColor: VRColors.feedback.white,
//       insetPadding: const EdgeInsets.only(left: 35, right: 35),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(
//               top: 25.0,
//               bottom: 8.0,
//             ),
//             child: SvgPicture.asset(
//               icon,
//               color: iconColor,
//               height: 45.0,
//               width: 40.0,
//             ),
//           ),
//           Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 13.0, left: 16, right: 16),
//                 child: Text(
//                   isUpperCase ? title.toUpperCase() : title,
//                   style: TextStyle(
//                     color: VRColors.black.plus1,
//                     fontWeight: FontWeight.w900,
//                     fontSize: 16,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               label != ''
//                   ? Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: Text(
//                         label,
//                         style: TextStyle(
//                             color: VRColors.grey.plus2,
//                             fontWeight: FontWeight.normal,
//                             fontSize: 15),
//                         textAlign: TextAlign.center,
//                       ),
//                     )
//                   : const SizedBox(),
//               const SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 height: 60,
//                 width: double.infinity,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Flexible(
//                         flex: 1,
//                         child: Align(
//                           alignment: Alignment.bottomCenter,
//                           child: MaterialButton(
//                             padding: const EdgeInsets.all(0),
//                             onPressed: buttonFunc1 ?? () => Modular.to.pop(),
//                             child: Container(
//                               height: 50,
//                               width: MediaQuery.of(context).size.width * 0.73,
//                               decoration: BoxDecoration(
//                                 color: VRColors.primary,
//                                 border: Border.all(color: VRColors.primary),
//                                 borderRadius: BorderRadius.circular(4),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   button1Title,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: VRColors.feedback.white,
//                                       fontSize: 14.0),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       secondButton
//                           ? const SizedBox(
//                               width: 16,
//                             )
//                           : const SizedBox(),
//                       secondButton
//                           ? Flexible(
//                               flex: 1,
//                               child: Align(
//                                 alignment: Alignment.bottomCenter,
//                                 child: MaterialButton(
//                                   key: Key('VRDialog_OnPressed'),
//                                   padding: const EdgeInsets.all(0),
//                                   onPressed:
//                                       buttonFunc2 ?? () => Modular.to.pop(),
//                                   child: Container(
//                                     height: 50,
//                                     width: MediaQuery.of(context).size.width *
//                                         0.73,
//                                     decoration: BoxDecoration(
//                                       border:
//                                           Border.all(color: VRColors.primary),
//                                       borderRadius: BorderRadius.circular(4),
//                                     ),
//                                     child: Center(
//                                       child: Text(
//                                         button2Title ?? '',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: VRColors.primary,
//                                             fontSize: 14.0),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             )
//                           : const SizedBox(),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }
