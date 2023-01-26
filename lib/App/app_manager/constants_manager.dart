// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/widgets.dart';

class Constant_manager {
  static const carousel_delay = 3;

  static double width = 0;
  static double height = 0;
  static bool? portrait;
  static bool? landscape;

  static double heightFn(BuildContext ctx) {
    return height = MediaQuery.of(ctx).size.height;
  }
  static double widthFn(BuildContext ctx) {
    return width = MediaQuery.of(ctx).size.width;
  }
  static bool Portrait(BuildContext ctx) {
    return portrait= MediaQuery.of(ctx).orientation == Orientation.portrait;
  }
  static bool Landscape(BuildContext ctx) {
    return landscape =  MediaQuery.of(ctx).orientation == Orientation.landscape;
  }
}
