import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/domain/entities/ProductsREsponseEntity.dart';
import 'package:route_task/domain/useCases/getProductsUseCase.dart';
import 'package:route_task/presentation/home/view_model/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit({required this.getProductsUseCase}) : super(HomeInitialState());
  GetProductsUseCase getProductsUseCase;
  List<ProductEntity> products = [];
  void getProducts([String? categoryId]) async {
    emit(GetProductsLoadingState());
    var either = await getProductsUseCase.invoke();
    either.fold((failure) {
      emit(GetProductsFailureState(errMsg: failure.errMsg));
    }, (response) {
      products = response.products!;
      emit(GetProductsSuccessState());
    });
  }
}
