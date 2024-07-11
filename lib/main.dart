import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/service_locator.dart';
import 'package:route_task/presentation/home/view/home_screen.dart';
import 'package:route_task/presentation/splash/splash_screen.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomeScreen.routeName:(context) => HomeScreen(),
          SplashScreen.routeName:(context) => SplashScreen(),
        },
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}