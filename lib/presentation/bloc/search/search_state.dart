part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    required List<ProductsResponse> results,
    required bool isLoading,
    required bool isError,
    required String? errorMessage,
    required String searchQuery,
    required String sortOption,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
        results: [],
        isLoading: false,
        isError: false,
        errorMessage: null,
        searchQuery: '',
        sortOption: 'low_to_high',
      );
}
