import 'package:flutter/material.dart';

class BTAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String barTitle;

  const BTAppBar({
    Key? key,
    required this.barTitle,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        // backgroundColor: VRColors.feedback.white,
        // iconTheme: IconThemeData(color: VRColors.primary),
        // centerTitle: true,
        // elevation: 0,
        // title: barTitle == ''
        //     ? SvgPicture.asset(
        //         VRImages.vratacadoHorizontal,
        //         height: SizeHelp.getHeight(context) * 0.033,
        //         color: VRColors.primary,
        //       )
        //     : Text(
        //         barTitle,
        //         style: TextStyle(
        //           color: VRColors.primary,
        //           fontWeight: FontWeight.bold,
        //           fontSize: 16,
        //         ),
        //       ),
        );
  }
}
