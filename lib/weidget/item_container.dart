import 'package:flutter/material.dart';
import 'package:shopping/weidget/app_text.dart';

import 'app_aapbar.dart';
import 'app_colors.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer(
      {Key? key,
      required this.nameImage,
      required this.itemName,
      required this.itemPrice})
      : super(key: key);

  final String nameImage;
  final String itemName;
  final String itemPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children:[
            ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/$nameImage',
            width:double.infinity ,
            height: 200,
              fit: BoxFit.fill,
            ),
          ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.itemName),
                child: Image.asset('assets/images/icon.png'),

              ),
            ),
          ]
        ),
        const SizedBox(height: 10,),
        AppText(
          title: itemName,
            color: AppColors.itemName,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          maxLines: 1,
        ),
        const SizedBox(height: 5,),
        AppText(
          title: itemPrice,
          color: AppColors.black,
          fontSize: 14,
          fontWeight: FontWeight.w400,)
      ],
    );
  }
}
