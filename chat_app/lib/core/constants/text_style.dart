import 'package:chat_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class TextAppStyle {
  

  static TextStyle textTitle = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: AppColor.primary);
  static TextStyle textBody ({Color?color}) { return TextStyle(

      fontSize: 16, fontWeight: FontWeight.w500, color:  color?? AppColor.black);
}  static TextStyle smallText ({Color?color}){return TextStyle(
    
      fontSize: 14, fontWeight: FontWeight.normal, color: color?? AppColor.black);}
}
