part of 'produts_bloc.dart';

@freezed
abstract class ProdutsState with _$ProdutsState {
  const factory ProdutsState({
    required List<ProductsResponse> products,
    required bool isLoading,
    required bool isLoadingMore,
    required bool isError,
    required String? errorMessage,
    required int currentPage,
  }) = _Initial;

  factory ProdutsState.initial() => const ProdutsState(
        products: [],
        isLoading: false,
        isLoadingMore: false,
        isError: false,
        errorMessage: null,
        currentPage: 1,
      );
}
