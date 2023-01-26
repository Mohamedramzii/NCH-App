import 'package:flutter/material.dart';
import 'package:nasr_city_hospital/App/app_manager/fonts_manager.dart';
import 'package:nasr_city_hospital/view/screens/branches_details_screen.dart';

import 'package:nasr_city_hospital/view/screens/charity_details_screen.dart';
import 'package:nasr_city_hospital/view/widgets/custom_listtile.dart';

import '../../App/app_manager/constants_manager.dart';
import '../../db/main_db.dart';

class Branches_Screen extends StatelessWidget {
  const Branches_Screen({super.key});
  @override
  Widget build(BuildContext context) {
    double height = Constant_manager.heightFn(context);
    double width = Constant_manager.heightFn(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: Text('الفروع',style: Font_manager().getScreenHeader(),),
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
                itemCount: Main_db.branch_data.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Branches_Details_Screen()));
                      },
                      child: Custom_ListTile_widget(
                          text: Main_db.branch_data[index].branche_name));
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
