part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.failure({
    required String code,
    required String message,
    String? statusCode,
  }) = Failure;

  const factory ProductState.fetched({
    required List<ProductModel> products,
  }) = Fetched;

  const factory ProductState.initial() = Initial;
}
