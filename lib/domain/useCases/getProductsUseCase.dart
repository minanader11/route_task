import 'package:dartz/dartz.dart';
import 'package:route_task/domain/entities/ProductsREsponseEntity.dart';
import 'package:route_task/domain/entities/failure.dart';
import 'package:route_task/domain/repo/getProductsRepo.dart';

class GetProductsUseCase{
  GetProductsRepo getProductsRepo;
  GetProductsUseCase({required this.getProductsRepo});
  Future<Either<Failures,ProductsResponseEntity>>invoke(){
    return getProductsRepo.getProducts();
  }
}