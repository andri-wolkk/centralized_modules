part of 'commodity_group_bloc.dart';

@freezed
class CommodityGroupEvent with _$CommodityGroupEvent {
  const factory CommodityGroupEvent.fetch() = CommodityGroupFetchEvent;

  const factory CommodityGroupEvent.init({
    required String path,
  }) = CommodityGroupInitEvent;
}
