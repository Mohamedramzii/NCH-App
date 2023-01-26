import 'package:flutter/material.dart';
import 'package:nasr_city_hospital/view/screens/charity_details_screen.dart';
import 'package:nasr_city_hospital/view/widgets/custom_listtile.dart';

import '../../App/app_manager/constants_manager.dart';
import '../../db/main_db.dart';

class Charity_Screen extends StatelessWidget {
  const Charity_Screen({super.key});
  @override
  Widget build(BuildContext context) {
    double height = Constant_manager.heightFn(context);
    double width = Constant_manager.heightFn(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('الجمعية'),
            leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
          ),
          body: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.06, horizontal: width * 0.01),
              child: ListView.separated(
                itemCount: Main_db.charity_category_data.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Charity_Details_Screen(
                                charity_category_data: Main_db.charity_category_data[index])));
                      },
                      child: Custom_ListTile_widget(
                          text: Main_db.charity_category_data[index].charity_sub_category));
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: height * 0.02,
                  );
                },
              ))),
    );
  }
}
