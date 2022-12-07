part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.failure({
    required String code,
    required String message,
    String? statusCode,
  }) = ProductFailureState;

  const factory ProductState.fetched({
    required List<ProductModel> products,
  }) = ProductFetchedState;

  const factory ProductState.loaded({required ProductModel product}) =
      ProductLoadedState;

  const factory ProductState.loading() = ProductLoadingState;

  const factory ProductState.initial() = ProductInitialState;
}
