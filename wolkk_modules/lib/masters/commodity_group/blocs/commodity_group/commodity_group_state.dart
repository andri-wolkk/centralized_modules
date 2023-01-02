part of 'commodity_group_bloc.dart';

@freezed
class CommodityGroupState with _$CommodityGroupState {
  const factory CommodityGroupState.failure({
    required String code,
    required String message,
    String? statusCode,
  }) = CommodityGroupFailureState;

  const factory CommodityGroupState.fetched({
    required List<CommodityGroupModel> commodityGroups,
  }) = CommodityGroupFetchedState;

  const factory CommodityGroupState.initial() = CommodityGroupInitialState;

  const factory CommodityGroupState.loaded({
    required CommodityGroupModel commodityGroup,
  }) = CommodityGroupLoadedState;

  const factory CommodityGroupState.loading() = CommodityGroupLoadingState;
}
