import 'package:flutter/material.dart';
import 'package:shopping/weidget/app_aapbar.dart';

import 'app_colors.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    Key? key,
    required this.isSelected,
    required this.nameImage,
    required this.categoryName,
    required this.onTap,
  }) : super(key: key);

  final String nameImage;
  final bool isSelected;
  final String categoryName;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20 ),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: isSelected ? AppColors.black : AppColors.iconGray,
              ),
              child: Image(
                image: AssetImage('assets/images/$nameImage'),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            categoryName,
            style: TextStyle(
              color: isSelected ? AppColors.darkGray : AppColors.gray,
              fontSize: 14,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
          const SizedBox(
            width: 25,
          ),
        ],
      ),
    );
  }
}
