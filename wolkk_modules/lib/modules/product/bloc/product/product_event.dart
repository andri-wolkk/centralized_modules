part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.fetch({
    required String key,
    required Options options,
    required String path,
    required String url,
  }) = ProductFetchEvent;

  const factory ProductEvent.search({
    required String keywords,
  }) = ProductSearchEvent;
}
