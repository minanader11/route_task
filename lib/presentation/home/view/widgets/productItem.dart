import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/Texts/ImagePaths.dart';
import 'package:route_task/core/theme/colors.dart';
import 'package:route_task/core/theme/text_styles.dart';
import 'package:route_task/domain/entities/ProductsREsponseEntity.dart';
import 'package:route_task/presentation/home/view/widgets/rowProductITem.dart';

class ProductItem extends StatelessWidget {
  ProductItem({required this.productEntity});

  ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border.all(width: 1, color: Color(0xff004182).withOpacity(0.6)),
          borderRadius: BorderRadius.circular(13.r)),
      child: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(13.r),
                  topLeft: Radius.circular(13.r)),
              child:
                  // Image.network(
                  //   productEntity.images?.first ??
                  //       "https://images.search.yahoo.com/search/images;_ylt=AwrhehxpgY5mHGAAIqRXNyoA;_ylu=Y29sbwNiZjEEcG9zAzEEdnRpZAMEc2VjA3BpdnM-?p=product&fr2=piv-web&type=E210US91105G0&fr=mcafee#id=1&iurl=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F26%2Fad%2F6b%2F26ad6bff8e10cfe315269386f8e0216f.jpg&action=click",
                  //   height: 128.h,
                  //   width: 191.w,
                  //   fit: BoxFit.fill,
                  // ),
                  CachedNetworkImage(
                width: 191.w,
                height: 128.h,
                fit: BoxFit.fill,
                imageUrl: productEntity.images?.first ?? '',
                placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(
                        color: MyColors.primaryColor)),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(productEntity.title ?? '',
                        style: Styles.textStyle12
                            .copyWith(color: MyColors.descriptionColor),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                    Text('EGP ${productEntity.price}',
                        style: Styles.textStyle12
                            .copyWith(color: MyColors.descriptionColor)),
                    Expanded(
                        child: RowProductItem(
                      productEntity: productEntity,
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: 8.w,
          top: 8.h,
          left: 160.w,
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ], color: Colors.white, borderRadius: BorderRadius.circular(20.r)),
            child: ImageIcon(
              color: MyColors.primaryColor,
              AssetImage(
                ImagePaths.favoriteActiveIcon,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
