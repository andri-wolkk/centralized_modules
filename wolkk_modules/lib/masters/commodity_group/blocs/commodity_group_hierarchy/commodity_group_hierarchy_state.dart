part of 'commodity_group_hierarchy_bloc.dart';

@freezed
class CommodityGroupHierarchyState with _$CommodityGroupHierarchyState {
  const factory CommodityGroupHierarchyState.failure({
    required String code,
    required String message,
    String? statusCode,
  }) = CommodityGroupHierarchyFailureState;

  const factory CommodityGroupHierarchyState.fetched({
    required List<CommodityGroupModel> commodityGroupHierarchies,
  }) = CommodityGroupHierarchyFetchedState;

  const factory CommodityGroupHierarchyState.initial() =
      CommodityGroupHierarchyInitialState;

  const factory CommodityGroupHierarchyState.loaded({
    required CommodityGroupModel commodityGroupHierarchy,
  }) = CommodityGroupHierarchyLoadedState;

  const factory CommodityGroupHierarchyState.loading() =
      CommodityGroupHierarchyLoadingState;
}
