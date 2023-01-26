import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasr_city_hospital/App/app_manager/strings_manager.dart';
import 'package:nasr_city_hospital/App/app_manager/theme_manager.dart';
import 'package:nasr_city_hospital/App/routes/routes.dart';
import 'package:nasr_city_hospital/view/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: String_manager.appName,
        theme: AppTheme(),
        initialRoute: Routes.homeScreen,
        onGenerateRoute: AppRoutes.routeGenerate,
      ),
    );
  }
}
