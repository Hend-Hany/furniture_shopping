import 'package:flutter/material.dart';
import 'package:shopping/weidget/app_colors.dart';
import 'package:shopping/weidget/app_text.dart';

class ShippingCart extends StatefulWidget {
   ShippingCart({Key? key, required this.onTap, required this.title}) : super(key: key);

  bool isSelected=false;
  final String title;
  final void Function() onTap;

  @override
  State<ShippingCart> createState() => _ShippingCartState();
}

class _ShippingCartState extends State<ShippingCart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              InkWell(
                onTap: widget.onTap,
                child: Checkbox(
                  activeColor:widget.isSelected? AppColors.black:AppColors.white,
                    value: widget.isSelected,
                    onChanged: (selected){
                       {
                         setState(() {
                           widget.isSelected=selected!;
                         });
                    }}),
              ),
               AppText(
                title:widget.title,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color:widget.isSelected? AppColors.darkGray:AppColors.gray,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 335,
          height: 127,
          child: Material(
            elevation: 15,
            shadowColor:Colors.grey[200] ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Container(
                  padding: const EdgeInsets.only(left: 20,top :15,bottom: 10,right: 20),
                  decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColors.borderColor,
                          width: 1
                        ),
                      ),

                  ),
                  child: Row(
                    children: [
                      const AppText(
                        title:'Bruno Fernandes' ,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      const Spacer(),
                      Image.asset('assets/images/edit.png',)
                    ],
                  ),
                ),
                 Container(
                   padding: const EdgeInsets.only(left: 20,top :15,bottom: 10,right: 20),
                   child: const AppText(
                     title: '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
                    // maxLines: 1,
                     color: AppColors.icon,
                     fontWeight: FontWeight.w400,
                     fontSize: 14,
                   ),
                 ),
               // SizedBox(height: 30,)
              ]


            ),
          ),
        ),
        const SizedBox(height: 30,)
      ],
    );
  }
}

