part of 'single_product_bloc.dart';

@freezed
class SingleProductEvent with _$SingleProductEvent {
  const factory SingleProductEvent.initialize() = Initialize;

  const factory SingleProductEvent.getSigleProduct({required String id}) = GetSigleProduct;
}