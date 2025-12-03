import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:product_list/data/models/products/products_model.dart';
import 'package:product_list/domain/core/failers/failers.dart';
import 'package:product_list/domain/repositories/single_product/single_products_repo.dart';

part 'single_product_event.dart';
part 'single_product_state.dart';
part 'single_product_bloc.freezed.dart';

@Injectable()
class SingleProductBloc extends Bloc<SingleProductEvent, SingleProductState> {
  final SingleProductsRepo _singleProductsRepo;

  SingleProductBloc(this._singleProductsRepo)
    : super(SingleProductState.initial()) {
    on<GetSigleProduct>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final result = await _singleProductsRepo.getSigleProduct(id: event.id);

      result.fold(
        (MainFailers failer) {
          emit(
            SingleProductState(isError: true, isLoading: false, product: null),
          );
        },
        (ProductsResponse response) {
          emit(
            SingleProductState(
              isError: false,
              isLoading: false,
              product: response,
            ),
          );
        },
      );
    });
  }
}
