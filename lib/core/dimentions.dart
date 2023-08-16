import 'package:flutter/material.dart';

class Dimensions{
  static double getHeight(context,int fraction,{bool removeAppBarHeight=true}){
    final mediaQuery= MediaQuery.of(context);
    if(removeAppBarHeight){
     return(mediaQuery.size.height-AppBar().preferredSize.height-mediaQuery.padding.top)/fraction;
    }
    return mediaQuery.size.height /fraction;
  }

  static double getWeight(context,int fraction){
    return MediaQuery.of(context).size.width/fraction;
  }

}
/*extension DimentionsExtention on num{
  double get height{
    return this.h;
  }

  double get weight{
    return this.w;
  }
}*/