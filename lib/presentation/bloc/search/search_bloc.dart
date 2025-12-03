import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:product_list/data/models/products/products_model.dart';
import 'package:product_list/domain/repositories/products/products_repo.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@Injectable()
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final GetProductsRepo _getProductsRepo;
  List<ProductsResponse> _allProducts = [];

  SearchBloc(this._getProductsRepo) : super(SearchState.initial()) {
    on<SearchProducts>(_onSearchProducts);
    on<ClearSearch>(_onClearSearch);
    on<SortBy>(_onSortBy);
  }

  Future<void> _onSearchProducts(
    SearchProducts event,
    Emitter<SearchState> emit,
  ) async {
    try {
      emit(state.copyWith(isLoading: true, isError: false));

      if (_allProducts.isEmpty) {
        final result = await _getProductsRepo.getProducts(
          limit: 20,
          page: 1,
        );

        result.fold(
          (failure) {
            emit(state.copyWith(
              isLoading: false,
              isError: true,
              errorMessage: "",
            ));
            return;
          },
          (products) {
            _allProducts = products;
          },
        );
      }

      // Perform search
      final searchResults = _filterAndSort(
        _allProducts,
        event.query,
        event.sortBy,
      );

      emit(state.copyWith(
        results: searchResults,
        isLoading: false,
        isError: false,
        searchQuery: event.query,
        sortOption: event.sortBy,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        isError: true,
        errorMessage: 'Search failed: $e',
      ));
    }
  }

  Future<void> _onClearSearch(
    ClearSearch event,
    Emitter<SearchState> emit,
  ) async {
    emit(SearchState.initial());
    _allProducts.clear();
  }

  Future<void> _onSortBy(
    SortBy event,
    Emitter<SearchState> emit,
  ) async {
    final sortedResults = _filterAndSort(
      state.results,
      state.searchQuery,
      event.sortOption,
    );

    emit(state.copyWith(
      results: sortedResults,
      sortOption: event.sortOption,
    ));
  }

  List<ProductsResponse> _filterAndSort(
    List<ProductsResponse> products,
    String query,
    String sortOption,
  ) {
    List<ProductsResponse> filtered = products
        .where((product) =>
            (product.title?.toLowerCase().contains(query.toLowerCase()) ?? false) ||
            (product.description?.toLowerCase().contains(query.toLowerCase()) ??
                false) ||
            (product.category?.toLowerCase().contains(query.toLowerCase()) ??
                false))
        .toList();

    // Sort by price
    if (sortOption == 'low_to_high') {
      filtered.sort((a, b) => (a.price ?? 0).compareTo(b.price ?? 0));
    } else if (sortOption == 'high_to_low') {
      filtered.sort((a, b) => (b.price ?? 0).compareTo(a.price ?? 0));
    }

    return filtered;
  }
}
