import 'package:dartz/dartz.dart';
import 'package:route_task/domain/data_source/getProductsDataSource.dart';
import 'package:route_task/domain/entities/ProductsREsponseEntity.dart';
import 'package:route_task/domain/entities/failure.dart';
import 'package:route_task/domain/repo/getProductsRepo.dart';

class GetProductsRepoImpl implements GetProductsRepo{
  GetProductsRemoteDataSource getProductsRemoteDataSource;
  GetProductsRepoImpl({required this.getProductsRemoteDataSource});

  @override
  Future<Either<Failures, ProductsResponseEntity>> getProducts() {
    return getProductsRemoteDataSource.getProducts();
  }

}