import 'package:dartz/dartz.dart';
import 'package:product_list/data/models/products/products_model.dart';
import 'package:product_list/domain/core/failers/failers.dart';

abstract class SingleProductsRepo {
  Future<Either<MainFailers, ProductsResponse>> getSigleProduct({required String id});
}