import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../App/app_manager/constants_manager.dart';

class Carousel_Slider_Widget extends StatelessWidget {
  Carousel_Slider_Widget({super.key});
  List images = [
    'assets/images/NCH.png',
    'assets/images/NCH.png',
    'assets/images/NCH.png',
    'assets/images/NCH.png',
    'assets/images/NCH.png',
  ];
  @override
  Widget build(BuildContext context) {
    double height = Constant_manager.heightFn(context);
    double width = Constant_manager.heightFn(context);
    bool portrait=Constant_manager.Portrait(context);
    bool landscape=Constant_manager.Landscape(context);

    return CarouselSlider(
      options: CarouselOptions(
          height: portrait? height * 0.40 : height *0.60,
          // enlargeStrategy: CenterPageEnlargeStrategy.scale,
          // aspectRatio: 2,
          viewportFraction:
              portrait
                  ? 1
                  : 0.5,
          autoPlay: true,
          enlargeCenterPage: true,
          autoPlayInterval:
              const Duration(seconds: Constant_manager.carousel_delay)),
      items: images.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  i,
                  fit: BoxFit.fill,
                  // width: width * 0.9,
                  // height: height * 0.50,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
