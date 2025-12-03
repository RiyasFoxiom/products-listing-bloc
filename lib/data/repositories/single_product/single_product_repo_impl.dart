import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:product_list/core/dio_client.dart';
import 'package:product_list/core/urls.dart';
import 'package:product_list/data/models/products/products_model.dart';
import 'package:product_list/domain/core/failers/failers.dart';
import 'package:product_list/domain/repositories/single_product/single_products_repo.dart';

@LazySingleton(as: SingleProductsRepo)
class SingleProductRepoImpl implements SingleProductsRepo {
  @override
  Future<Either<MainFailers, ProductsResponse>> getSigleProduct({
    required String id,
  }) async {
    try {
      final dio = DioClient().dio;
      final response = await dio.get('$baseUrl$productsUrl/$id');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final product = ProductsResponse.fromJson(response.data);
        return Right(product);
      } else {
        return Left(MainFailers.serverFailure());
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        return Left(MainFailers.clientFailure());
      }
      return Left(MainFailers.clientFailure());
    } catch (e) {
      return Left(MainFailers.serverFailure());
    }
  }
}
