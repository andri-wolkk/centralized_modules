part of 'commodity_group_hierarchy_bloc.dart';

@freezed
class CommodityGroupHierarchyEvent with _$CommodityGroupHierarchyEvent {
  const factory CommodityGroupHierarchyEvent.fetch({
    required CommodityGroupModel commodityGroup,
  }) = CommodityGroupHierarchyFetchEvent;

  const factory CommodityGroupHierarchyEvent.init({
    required String path,
  }) = CommodityGroupHierarchyInitEvent;
}
