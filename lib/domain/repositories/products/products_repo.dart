
import 'package:product_list/data/models/products/products_model.dart';
import 'package:product_list/domain/core/failers/failers.dart';
import 'package:dartz/dartz.dart';

abstract class GetProductsRepo {
  Future<Either<MainFailers, List<ProductsResponse>>> getProducts({
    int limit = 10,
    int page = 1,
  });
}