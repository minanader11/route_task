import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/Texts/MyTexts.dart';
import 'package:route_task/core/theme/colors.dart';
import 'package:route_task/core/theme/text_styles.dart';

class SearchTextFieldWithCart extends StatelessWidget {
  SearchTextFieldWithCart({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: TextFormField(
          style: TextStyle(color: MyColors.primaryColor),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 16.h, bottom: 16.h),
            isCollapsed: true,
            isDense: true,
            filled: true,
            fillColor: MyColors.whiteColor,
            prefixIcon: Icon(
              Icons.search,
              size: 24,
            ),
            prefixIconColor: MyColors.primaryColor,
            hintText: MyTexts.whatDoYouSearchFor,
            hintStyle:
                Styles.textStyle16.copyWith(color: MyColors.descriptionColor),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: MyColors.primaryColor, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: MyColors.primaryColor, width: 2),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: MyColors.redColor, width: 2),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: MyColors.redColor, width: 2),
            ),
          ),
        ),
      ),
      SizedBox(
        width: 24.w,
      ),
      InkWell(
        onTap: () {},
        child: Icon(
          Icons.shopping_cart_outlined,
          color: MyColors.primaryColor,
          size: 24,
        ),
      ),
    ]);
  }
}
