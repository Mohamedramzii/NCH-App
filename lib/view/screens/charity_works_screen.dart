import 'package:flutter/material.dart';
import 'package:nasr_city_hospital/App/app_manager/fonts_manager.dart';
import 'package:nasr_city_hospital/db/main_db.dart';

import '../../App/app_manager/constants_manager.dart';

class Charity_Works_Screen extends StatelessWidget {
  const Charity_Works_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Constant_manager.heightFn(context);
    double width = Constant_manager.heightFn(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            Center(
                child: Text(
              'بعض الأعمال الخيرية ',
              style: Font_manager().getMainHeader(),
            )),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.02),
              height: height * 0.85,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: Main_db.charity_work_data.length,
                itemBuilder: (context, index) {
                  return Container(
                    // margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        iconColor: Colors.green,
                        title: Text(
                          Main_db.charity_work_data[index].title,
                          style: Font_manager()
                              .getMainHeader()
                              .copyWith(fontSize: 25),
                        ),
                        children: [
                          SizedBox(
                            height: height * 0.2,
                            child: ListView.builder(
                                itemCount: Main_db
                                    .charity_work_data[index].body.length,
                                itemBuilder: (contex, indexx) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '➼ ${Main_db.charity_work_data[index].body[indexx]}',
                                      style: Font_manager()
                                          .getRegularText()
                                          .copyWith(fontSize: 18),
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: height * 0.03,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
