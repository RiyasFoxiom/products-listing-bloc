// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:product_list/data/repositories/products/products_repo_impl.dart'
    as _i1002;
import 'package:product_list/data/repositories/single_product/single_product_repo_impl.dart'
    as _i891;
import 'package:product_list/domain/repositories/products/products_repo.dart'
    as _i761;
import 'package:product_list/domain/repositories/single_product/single_products_repo.dart'
    as _i933;
import 'package:product_list/presentation/bloc/produts/produts_bloc.dart'
    as _i658;
import 'package:product_list/presentation/bloc/search/search_bloc.dart'
    as _i986;
import 'package:product_list/presentation/bloc/single_product/single_product_bloc.dart'
    as _i63;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i761.GetProductsRepo>(() => _i1002.ProductsRepoImpl());
    gh.lazySingleton<_i933.SingleProductsRepo>(
      () => _i891.SingleProductRepoImpl(),
    );
    gh.factory<_i63.SingleProductBloc>(
      () => _i63.SingleProductBloc(gh<_i933.SingleProductsRepo>()),
    );
    gh.factory<_i658.ProdutsBloc>(
      () => _i658.ProdutsBloc(gh<_i761.GetProductsRepo>()),
    );
    gh.factory<_i986.SearchBloc>(
      () => _i986.SearchBloc(gh<_i761.GetProductsRepo>()),
    );
    return this;
  }
}
