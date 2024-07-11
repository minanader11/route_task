


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_task/core/theme/colors.dart';

abstract class Styles {
  static   TextStyle textStyle18 = GoogleFonts.poppins(textStyle: TextStyle(
      fontSize: 18.sp, color: MyColors.whiteColor ,fontWeight: FontWeight.w500));
  static TextStyle textStyle24 =  GoogleFonts.poppins(textStyle: TextStyle(
      fontSize: 24.sp, color: MyColors.whiteColor, fontWeight: FontWeight.w600));
  static TextStyle textStyle16 = GoogleFonts.poppins(textStyle:TextStyle(
      fontSize: 16.sp, color: MyColors.whiteColor, fontWeight: FontWeight.w300));
  static TextStyle textStyle20 = GoogleFonts.poppins(textStyle:TextStyle(
      fontSize: 20.sp, color: MyColors.primaryColor, fontWeight: FontWeight.w600));
  static TextStyle textStyle12 = GoogleFonts.poppins(textStyle:TextStyle(
      fontSize: 12.sp, color: MyColors.whiteColor, fontWeight: FontWeight.w400));
  static TextStyle textStyle14 = GoogleFonts.poppins(textStyle:TextStyle(
      fontSize: 14, color: MyColors.whiteColor, fontWeight: FontWeight.w500));
}
