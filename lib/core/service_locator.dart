import 'package:get_it/get_it.dart';
import 'package:route_task/data/api/api_manager.dart';
import 'package:route_task/data/data_source/GetProductsRemoteDataSourceImpl.dart';
import 'package:route_task/data/repo/GetProductsRepoImpl.dart';
import 'package:route_task/domain/data_source/getProductsDataSource.dart';
import 'package:route_task/domain/repo/getProductsRepo.dart';
import 'package:route_task/domain/useCases/getProductsUseCase.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiManager>(ApiManager.getInstance());
  getIt.registerSingleton<GetProductsRemoteDataSource>(
      GetProductsRemoteDataSourceImpl(apiManager: getIt.get<ApiManager>()));
  getIt.registerSingleton<GetProductsRepo>(GetProductsRepoImpl(
      getProductsRemoteDataSource: getIt.get<GetProductsRemoteDataSource>()));

  getIt.registerSingleton<GetProductsUseCase>(
      GetProductsUseCase(getProductsRepo: getIt.get<GetProductsRepo>()));
}
