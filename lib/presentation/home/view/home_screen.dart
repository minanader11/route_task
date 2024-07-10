
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/Texts/ImagePaths.dart';
import 'package:route_task/core/Texts/MyTexts.dart';
import 'package:route_task/presentation/home/view/widgets/SearchTextFieldWithCart.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName='HomeScreen';
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50.h, left: 16.w,right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 22.h,
              width: 66.w,
              child: Image.asset(ImagePaths.routeIcon),
            ),
            SizedBox(
              height: 18.h,
            ),
            SearchTextFieldWithCart(),
            SizedBox(
              height: 24.h,
            ),

            SizedBox(height: 10.h,)
          ],
        ),
      ),
    );
  }
}
