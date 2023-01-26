import 'package:flutter/material.dart';

class Color_manager{


  //Splash Screen Colors
  static Color splashBackgroundColor=HexColor('#04CF77');
  static Color splashFontColor=HexColor('#FAF4F4');

  //App Colors
  static Color backgroundColor=HexColor('#EEEFEC');
  static Color fontColor=HexColor('#04CF77');
  static Color kGrey=HexColor('#737477');
}


class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
