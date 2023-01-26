import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasr_city_hospital/App/app_manager/colors_manager.dart';
import 'package:nasr_city_hospital/App/app_manager/strings_manager.dart';

class Font_manager {
  TextStyle _getTextStyle(double fontsize, FontWeight fontWeight, Color color) {
    return TextStyle(
        fontSize: fontsize,
        fontWeight: fontWeight,
        fontFamily: String_manager.appFontFamily,
        color: color);
  }

  TextStyle getSplashLogoTitle() {
    return _getTextStyle(20.sp, FontWeight.bold, Color_manager.splashFontColor);
  }

  TextStyle getMainHeader(){
    return _getTextStyle(30.sp, FontWeight.w700, Color_manager.fontColor);
  }
  TextStyle getScreenHeader(){
    return _getTextStyle(35.sp, FontWeight.w700, Color_manager.fontColor);
  }
  TextStyle getRegularText(){
    return _getTextStyle(18.sp, FontWeight.w400, Colors.black);
  }


}
