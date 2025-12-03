part of 'single_product_bloc.dart';

@freezed
abstract class SingleProductState with _$SingleProductState {
  const factory SingleProductState({
    ProductsResponse? product,
    required bool isLoading,
    required bool isError,
  }) = _SingleProductState;

  factory SingleProductState.initial() => const SingleProductState(
        product: null,    
        isLoading: false,   
        isError: false,
      );
}
