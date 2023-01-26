import 'package:flutter/material.dart';
import 'package:nasr_city_hospital/App/app_manager/colors_manager.dart';
import 'package:nasr_city_hospital/App/app_manager/fonts_manager.dart';
import 'package:nasr_city_hospital/App/app_manager/strings_manager.dart';

ThemeData AppTheme(){
  return ThemeData(
    primaryColor: Color_manager.fontColor,
    scaffoldBackgroundColor: Color_manager.backgroundColor,
    fontFamily: String_manager.appFontFamily,


    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: Color_manager.kGrey,
      elevation: 10
    ),

    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      color: Colors.white,
      shadowColor: Color_manager.kGrey,
      titleTextStyle: Font_manager().getScreenHeader(),
    )
  );
}