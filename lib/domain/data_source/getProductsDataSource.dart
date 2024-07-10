import 'package:dartz/dartz.dart';
import 'package:route_task/domain/entities/ProductsREsponseEntity.dart';
import 'package:route_task/domain/entities/failure.dart';

abstract class GetProductsRemoteDataSource{
  Future<Either<Failures,ProductsResponseEntity>>getProducts();
}