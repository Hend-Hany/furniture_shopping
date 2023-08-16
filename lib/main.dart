import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping/veiw/shipping_addresses.dart';

import 'veiw/home.dart';

void main() {
  runApp(const MyApp() );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context,child){
          ScreenUtil.init(
            context,
            designSize:const Size (375,812),
          );
          return child!;
        },
      home: const ShippingAddressesView(),
    );

  }
}