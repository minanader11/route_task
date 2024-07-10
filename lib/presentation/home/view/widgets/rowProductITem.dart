
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/theme/colors.dart';
import 'package:route_task/core/theme/text_styles.dart';
import 'package:route_task/domain/entities/ProductsREsponseEntity.dart';

class RowProductItem extends StatelessWidget {
  RowProductItem({required this.productEntity});

  ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {

    return Container( margin: EdgeInsets.only(right: 8.w, bottom: 8.h),
      child: Row(
        children: [
          Text(
            'review(${productEntity.rating})',
            style: Styles.textStyle12.copyWith(color: MyColors.primaryColor),
          ),
          SizedBox(
            width: 4.w,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
            size: 16,
          ),
          Spacer(),
          InkWell(onTap: () {

          },
            child: Container(
             // margin: EdgeInsets.only(right: 8.w, bottom: 8.h),
              padding: EdgeInsets.only(right: 2.w, bottom: 2.h,left: 2.w,top: 2.h),
              decoration: BoxDecoration(
                  color: MyColors.primaryColor,
                  borderRadius: BorderRadius.circular(20.r)),
              // child: BlocBuilder<CategoryViewModel,CategoryStates>(builder:(context, state) {
              //
              //     return Icon(
              //       Icons.add,
              //       color: MyColors.whiteColor,
              //       size: 16.w,
              //     );
              //   }
              // ,
              // ),
            ),
          )
        ],
      ),
    );
  }
}
