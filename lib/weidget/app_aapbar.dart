import 'package:flutter/material.dart';
import 'package:shopping/weidget/app_text.dart';

import 'app_colors.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    Key? key,
    required this.title,
    required this.leading,
    required this.trailing,
    required this.upperTitle,
  }) : super(key: key);

  final String? title;
  final String? upperTitle;
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      iconTheme: const IconThemeData(
        color: AppColors.gray,
      ),
      leading: leading,
      title: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppText(
              title: upperTitle ?? "",
              fontWeight: FontWeight.normal,
              fontSize: 14,
              color: AppColors.gray2,
            ),

            AppText(
              title: title ?? "",
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ],
        ),
      ),
      actions: [
        if (trailing != null) trailing!,
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
