import 'package:flutter/material.dart';
import 'package:shopping/weidget/app_aapbar.dart';

import 'app_colors.dart';

class AppText extends StatelessWidget {
  const AppText( {
    Key? key,

    this.maxLines,
    this.color =AppColors.darkGray,
    this.fontSize=14,
    this.fontWeight=FontWeight.normal,
    required this.title,
  }) : super(key: key);

  final String title;
  final int? maxLines;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );

  }
}
