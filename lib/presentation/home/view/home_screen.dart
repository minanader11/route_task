
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_task/core/Texts/ImagePaths.dart';
import 'package:route_task/core/Texts/MyTexts.dart';
import 'package:route_task/core/service_locator.dart';
import 'package:route_task/domain/useCases/getProductsUseCase.dart';
import 'package:route_task/presentation/home/view/widgets/SearchTextFieldWithCart.dart';
import 'package:route_task/presentation/home/view/widgets/productsGridView.dart';
import 'package:route_task/presentation/home/view_model/home_cubit.dart';
import 'package:route_task/presentation/home/view_model/home_states.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='HomeScreen';
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   HomeCubit homeCubit=HomeCubit(getProductsUseCase: getIt.get<GetProductsUseCase>());

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<HomeCubit,HomeStates>(bloc: homeCubit..getProducts(),
      builder:(context, state) =>  Scaffold(
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
                if(state is GetProductsLoadingState)
                 Expanded(child: Center(child: CircularProgressIndicator()))
                else if (state is GetProductsSuccessState)
                  Expanded(child: ProductsGridView(products: homeCubit.products))
                else if (state is GetProductsFailureState)
              Center(child: Text(state.errMsg),)
                  ,
              SizedBox(height: 10.h,)
            ],
          ),
        ),
      ),
    );
  }
}
