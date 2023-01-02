part of 'catalog_bloc.dart';

@freezed
class CatalogEvent with _$CatalogEvent {
  const factory CatalogEvent.fetch() = CatalogFetchEvent;

  const factory CatalogEvent.filter({
    String? idCommodityGroup,
    String? keywords,
  }) = CatalogFilterEvent;
}
