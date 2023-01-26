import 'package:flutter/material.dart';

import '../../App/app_manager/fonts_manager.dart';

class Custom_container extends StatelessWidget {
  final String text;
  final Function() ontap;
  const Custom_container({
    Key? key,
    required this.text,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: ontap,
      child: Container(
        // width: width * 0.04,
        margin: EdgeInsets.symmetric(horizontal: width * 0.02),
        height: height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          border: Border.all(color: Colors.green,width: 4)
        ),
        child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: Font_manager().getMainHeader().copyWith(fontSize: 40),
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}
