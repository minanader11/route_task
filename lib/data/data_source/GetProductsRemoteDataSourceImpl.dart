import 'package:dartz/dartz.dart';
import 'package:route_task/data/api/api_manager.dart';
import 'package:route_task/domain/data_source/getProductsDataSource.dart';
import 'package:route_task/domain/entities/ProductsREsponseEntity.dart';
import 'package:route_task/domain/entities/failure.dart';

class GetProductsRemoteDataSourceImpl implements GetProductsRemoteDataSource {
  ApiManager apiManager;

  GetProductsRemoteDataSourceImpl({required this.apiManager});

  @override
  Future<Either<Failures, ProductsResponseEntity>> getProducts() async {
    var either = await apiManager.getProducts();
    return either.fold((failure) => Left(failure), (respone) => Right(respone));
  }
}
