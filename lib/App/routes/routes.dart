import 'package:flutter/material.dart';
import 'package:nasr_city_hospital/App/app_manager/fonts_manager.dart';
import 'package:nasr_city_hospital/App/app_manager/strings_manager.dart';
import 'package:nasr_city_hospital/model/Main_model.dart';
import 'package:nasr_city_hospital/view/screens/charity_screen.dart';
import 'package:nasr_city_hospital/view/screens/branches_details_screen.dart';
import 'package:nasr_city_hospital/view/screens/branches_screen.dart';
import 'package:nasr_city_hospital/view/screens/charity_details_screen.dart';
import 'package:nasr_city_hospital/view/screens/charity_works_screen.dart';
import 'package:nasr_city_hospital/view/screens/home_screen.dart';
import 'package:nasr_city_hospital/view/screens/splash_screen.dart';

class NavigationAnimation extends PageRouteBuilder {
  final Widget screen;
  final Curve curve;
  final Alignment alignment;
  NavigationAnimation({
    required this.screen,
    this.curve = Curves.linearToEaseOut,
    this.alignment = Alignment.center,
  }) : super(
            transitionDuration: const Duration(milliseconds: 800),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              animation = CurvedAnimation(parent: animation, curve: curve);
              return ScaleTransition(
                alignment: alignment,
                scale: animation,
                child: child,
              );
            },
            pageBuilder: (context, animation, secondaryAnimation) => screen);
}

class AppRoutes {
  static Route? routeGenerate(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return NavigationAnimation(screen: const Splash_Screen());
      case Routes.homeScreen:
        return NavigationAnimation(screen: const Home_Screen());
      case Routes.charityScreen:
        return NavigationAnimation(screen: const Charity_Screen());
      case Routes.branchesScreen:
        return NavigationAnimation(screen: const Branches_Screen());
      case Routes.detailsScreen:
        return NavigationAnimation(screen: const Charity_Details_Screen());
      case Routes.branchesDetailsScreen:
        return NavigationAnimation(screen: const Branches_Details_Screen());
      case Routes.charityWorkScreen:
        return NavigationAnimation(screen: const Charity_Works_Screen());

      default:
        return unDefinedScreen();
    }
  }

  static Route? unDefinedScreen() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              body: Center(
                child: Text(String_manager.noRouteFound,
                    style: Font_manager().getRegularText()),
              ),
            ));
  }
}

class Routes {
  static const splashScreen = '/';
  static const homeScreen = 'homeScreen';
  static const charityScreen = 'charityScreen';
  static const branchesScreen = 'branchesScreen';
  static const detailsScreen = 'details_screen';
  static const branchesDetailsScreen = 'branchesDetailsScreen';
  static const charityWorkScreen = 'charityWorkScreen';
}
