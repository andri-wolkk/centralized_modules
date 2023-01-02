part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.fetch() = ProductFetchEvent;

  const factory ProductEvent.init({
    required String path,
  }) = ProductInitEvent;
}
