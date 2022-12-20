part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.fetch({required String path}) = ProductFetchEvent;

  const factory ProductEvent.search({
    required String keywords,
  }) = ProductSearchEvent;
}
