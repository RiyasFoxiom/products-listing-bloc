part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchProducts({
    required String query,
    required String sortBy,
  }) = SearchProducts;

  const factory SearchEvent.clearSearch() = ClearSearch;

  const factory SearchEvent.sortBy({required String sortOption}) = SortBy;
}
