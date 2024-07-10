import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;
import 'package:route_task/data/api/api_constants.dart';
import 'package:route_task/data/model/response/ProductsResponseDto.dart';
import 'package:route_task/domain/entities/ProductsREsponseEntity.dart';
import 'package:route_task/domain/entities/failure.dart';
class ApiManager{
  static ApiManager? _instance;
ApiManager._();
  static ApiManager getInstance() {
    _instance ??= ApiManager._();
    return _instance!;
  }

  Future<Either<Failures,ProductsResponseDto>>getProducts() async{
    var connectivityResult =
    await Connectivity().checkConnectivity(); // User defined class
    if (connectivityResult.contains(ConnectivityResult.mobile) ||
        connectivityResult.contains(ConnectivityResult.wifi)){
      Uri url =  Uri.https(ApiConstants.baseUrl, ApiConstants.getProductsApi);
      var response =await http.get(url);
      var productResponse=ProductsResponseDto.fromJson(jsonDecode(response.body));
      if(response.statusCode>=200 && response.statusCode <300 ){
        return Right(productResponse);
      }else{
        return Left(ServerFailure(errMsg:'Error Fetching Products'));
      }
    } else{
      return Left(NetworkFailure(errMsg: 'Check Your Internet Connection'));
    }
  }
}