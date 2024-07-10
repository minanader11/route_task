abstract class HomeStates{}
class HomeInitialState extends HomeStates{}
class GetProductsLoadingState extends HomeStates{}
class GetProductsSuccessState extends HomeStates{}
class GetProductsFailureState extends HomeStates{
  String errMsg;
  GetProductsFailureState({required this.errMsg});
}