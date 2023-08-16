import 'package:flutter/material.dart';
import 'package:shopping/weidget/app_aapbar.dart';
import 'package:shopping/weidget/shipping_cart.dart';
import '../models/checkbox_controller.dart';

class ShippingAddressesView extends StatefulWidget {
   const ShippingAddressesView({Key? key}) : super(key: key);

  @override
  State<ShippingAddressesView> createState() => _ShippingAddressesViewState();
}

class _ShippingAddressesViewState extends State<ShippingAddressesView> {

  CheckBoxController checkBoxController=CheckBoxController();

  @override
  void initState() {
    checkBoxController.selectedCheckBox=checkBoxController.checkbox.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Shipping address',
        leading: Image.asset('assets/images/arrow.png'),
        trailing: null,
        upperTitle: '',
      ),
      body:
           ListView.builder(
            itemCount: checkBoxController.checkbox.length,
            itemBuilder: (context,index){
              return ShippingCart(
                title:checkBoxController .checkbox[index].title,
                isSelected: checkBoxController.selectedCheckBox==checkBoxController.checkbox[index],
                onTap: (){
                  checkBoxController.selectedCheckBox=checkBoxController.checkbox[index];
                  setState(() {

                  });
                },
              );

            },
          ),


    );
  }
}
