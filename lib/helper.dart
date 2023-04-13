
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Helper{
  static  double getScreenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
  static double getScreenHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
  static String getAssetName(String fileName,String type){
    return 'images/arkaplan4.png/$type/$fileName';
  }
}