part of 'produts_bloc.dart';

@freezed
class ProdutsEvent with _$ProdutsEvent {
  const factory ProdutsEvent.getProducts() = GetProducts;
  const factory ProdutsEvent.loadMore() = LoadMore;
}