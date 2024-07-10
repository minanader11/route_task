import 'dart:async';

import 'package:flutter/material.dart';
import 'package:route_task/core/Texts/ImagePaths.dart';
import 'package:route_task/presentation/home/view/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String routeName = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), // Change the duration as needed
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Image.asset(
      ImagePaths.splashScreen,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    ));
  }
}
