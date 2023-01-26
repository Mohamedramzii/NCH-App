import 'package:flutter/material.dart';
import 'package:nasr_city_hospital/App/app_manager/constants_manager.dart';
import 'package:nasr_city_hospital/App/app_manager/fonts_manager.dart';

import 'package:nasr_city_hospital/model/Main_model.dart';

class Charity_Details_Screen extends StatelessWidget {
  final Charity_data? charity_category_data;
  // final int index;
  const Charity_Details_Screen({
    Key? key,
    // ignore: non_constant_identifier_names
    this.charity_category_data,
    // required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Constant_manager.widthFn(context);
    double height = Constant_manager.heightFn(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              width: width,
              height: height * 0.4,
              color: Colors.grey.shade400,
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.01, right: width * 0.03),
              child: Text(
                charity_category_data!.charity_sub_category,
                style: Font_manager().getMainHeader().copyWith(decoration: TextDecoration.underline),
                textAlign: TextAlign.center,
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                charity_category_data!.charity_details_body,
                style: Font_manager().getRegularText(),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
