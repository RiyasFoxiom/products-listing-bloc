import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:product_list/data/models/products/products_model.dart';
import 'package:product_list/domain/core/failers/failers.dart';
import 'package:product_list/domain/repositories/products/products_repo.dart';

part 'produts_event.dart';
part 'produts_state.dart';
part 'produts_bloc.freezed.dart';

@Injectable()
class ProdutsBloc extends Bloc<ProdutsEvent, ProdutsState> {
  final GetProductsRepo _getProductsRepo;
  static const int _pageLimit = 10;
  late ScrollController scrollController;

  ProdutsBloc(this._getProductsRepo) : super(ProdutsState.initial()) {
    scrollController = ScrollController();
    scrollController.addListener(_onScroll);
    on<GetProducts>(_onGetProducts);
    on<LoadMore>(_onLoadMore);
  }

  void _onScroll() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      add(const LoadMore());
    }
  }

  @override
  Future<void> close() {
    scrollController.dispose();
    return super.close();
  }

  Future<void> _onGetProducts(
    GetProducts event,
    Emitter<ProdutsState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: true,
      isError: false,
      errorMessage: null,
      currentPage: 1,
    ));

    final result = await _getProductsRepo.getProducts(
      limit: _pageLimit,
      page: 1,
    );

    result.fold(
      (MainFailers failure) {
        emit(state.copyWith(
          products: [],
          isLoading: false,
          isError: true,
          errorMessage: "failure.message",
          currentPage: 1,
        ));
      },
      (List<ProductsResponse> products) {
        emit(state.copyWith(
          products: products,
          isLoading: false,
          isError: false,
          errorMessage: null,
          currentPage: 1,
        ));
      },
    );
  }

  Future<void> _onLoadMore(
    LoadMore event,
    Emitter<ProdutsState> emit,
  ) async {
    final nextPage = state.currentPage + 1;

    emit(state.copyWith(isLoadingMore: true));

    final result = await _getProductsRepo.getProducts(
      limit: _pageLimit,
      page: nextPage,
    );

    result.fold(
      (MainFailers failure) {
        emit(state.copyWith(
          isLoadingMore: false,
          isError: true,
          errorMessage: "failure.message",
        ));
      },
      (List<ProductsResponse> newProducts) {
        final updatedProducts = [...state.products, ...newProducts];
        emit(state.copyWith(
          products: updatedProducts,
          isLoadingMore: false,
          isError: false,
          errorMessage: null,
          currentPage: nextPage,
        ));
      },
    );
  }
}
