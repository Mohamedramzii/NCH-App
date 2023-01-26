import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasr_city_hospital/App/app_manager/fonts_manager.dart';
import 'package:nasr_city_hospital/App/routes/routes.dart';
import 'package:nasr_city_hospital/db/main_db.dart';

import 'package:nasr_city_hospital/view/widgets/carousel_slider_widget.dart';
import 'package:nasr_city_hospital/view/widgets/custom_category_container.dart';

import '../../App/app_manager/constants_manager.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Constant_manager.heightFn(context);
    double width = Constant_manager.heightFn(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: ListView(
        children: [
          // Card(
          //   shape:
          //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          //   elevation: 5,
          //   margin: EdgeInsets.only(top: height * 0.04, bottom: height * 0.02),
          //   child: DefaultTextStyle(
          //     textAlign: TextAlign.center,
          //     style: const TextStyle(
          //       fontSize: 35,
          //       color: Colors.white,
          //     ),
          //     child: Container(
          //       alignment: Alignment.center,
          //       height: height * 0.1,
          //       child: AnimatedTextKit(
          //         repeatForever: true,
          //         isRepeatingAnimation: true,
          //         pause: const Duration(milliseconds: 1),
          //         animatedTexts: [
          //           FlickerAnimatedText('جمعية مدينة نصر للرعاية',
          //               textStyle: Font_manager().getMainHeader()),
          //           // FlickerAnimatedText('Night Vibes On'),
          //           // FlickerAnimatedText("C'est La Vie !"),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Text(
          //   'جمعية مدينة نصر للرعاية',
          //   style: Font_manager().getMainHeader(),
          //   textAlign: TextAlign.center,
          // ),
          // Text(
          //   'ترحب بكم',
          //   style: Font_manager().getRegularText(),
          //   textAlign: TextAlign.center,
          // ),
          // SizedBox(
          //   height: height * 0.03,
          // ),
          Carousel_Slider_Widget(),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.03),
            child: Text(
              '• يمكنكم الاطلاع علي المزيد من المعلومات عن :',
              style: Font_manager()
                  .getRegularText()
                  .copyWith(fontSize: 20, decoration: TextDecoration.underline),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, Routes.charityWorkScreen),
            child: Container(
              width: width,
              height: height * 0.2,
              margin: EdgeInsets.symmetric(horizontal: width * 0.02),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.green, width: 4),
                color: Colors.white,
              ),
              child: Center(
                  child: Text(
                'الأعمال الخيرية',
                style: Font_manager().getScreenHeader(),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          SizedBox(
            height: height * 0.3,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  // crossAxisSpacing: 10,
                  mainAxisExtent: height * 0.3,
                  mainAxisSpacing: 2),
              physics: const ClampingScrollPhysics(),
              itemCount: Main_db.category_data.length,
              itemBuilder: (context, index) {
                return Custom_container(
                    ontap: () => Navigator.of(context)
                        .pushNamed(Main_db.category_data[index].screenPathname),
                    text: Main_db.category_data[index].category_name);
              },
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),

          // Custom_container(
          //     ontap: () =>
          //         Navigator.of(context).pushNamed(Routes.associationScreen),
          //     text: 'الجمعية'),
          // SizedBox(
          //   height: height * 0.03,
          // ),
          // Custom_container(
          //   text: 'الفروع',
          //   ontap: () {
          //     Navigator.of(context).pushNamed(Routes.branchesScreen);
          //   },
          // ),
        ],
      )),
    );
  }
}
