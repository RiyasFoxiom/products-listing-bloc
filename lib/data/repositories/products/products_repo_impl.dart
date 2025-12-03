import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:product_list/core/dio_client.dart';
import 'package:product_list/core/urls.dart';
import 'package:product_list/data/models/products/products_model.dart';
import 'package:product_list/domain/core/failers/failers.dart';
import 'package:product_list/domain/repositories/products/products_repo.dart';

@LazySingleton(as: GetProductsRepo)
class ProductsRepoImpl implements GetProductsRepo {
  @override
  Future<Either<MainFailers, List<ProductsResponse>>> getProducts({
    int limit = 10,
    int page = 1,
  }) async {
    try {
      final dio = DioClient().dio;
      final response = await dio.get(
        '$baseUrl$productsUrl?limit=$limit&page=$page',
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final productList = (response.data as List)
            .map(
              (product) =>
                  ProductsResponse.fromJson(product as Map<String, dynamic>),
            )
            .toList();
        return Right(productList);
      } else {
        return Left(MainFailers.serverFailure());
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        return Left(MainFailers.serverFailure());
      }
      return Left(MainFailers.clientFailure());
    } catch (e) {
      return Left(MainFailers.serverFailure());
    }
  }
}
