import 'package:wolkk_core/wolkk_core.dart';

import '../../../../utils/transformer.dart';
import '../../models/models.dart';

part 'commodity_group_hierarchy_bloc.freezed.dart';
part 'commodity_group_hierarchy_event.dart';
part 'commodity_group_hierarchy_state.dart';

@singleton
class CommodityGroupHierarchyBloc
    extends Bloc<CommodityGroupHierarchyEvent, CommodityGroupHierarchyState> {
  CommodityGroupHierarchyBloc()
      : super(const CommodityGroupHierarchyState.initial()) {
    on<CommodityGroupHierarchyFetchEvent>(
      _fetch,
      transformer: Transformer.getEvent(),
    );
  }

  List<CommodityGroupModel> commodityGroupHierarchies = [];

  void _fetch(
    CommodityGroupHierarchyFetchEvent event,
    Emitter<CommodityGroupHierarchyState> emit,
  ) {
    CommodityGroupModel commodityGroup = event.commodityGroup;
    commodityGroupHierarchies.clear();
    commodityGroupHierarchies.add(commodityGroup);
    while (commodityGroup.parentCommodityGroup != null) {
      commodityGroupHierarchies.add(commodityGroup.parentCommodityGroup!);
      commodityGroup = commodityGroup.parentCommodityGroup!;
    }
    commodityGroupHierarchies = commodityGroupHierarchies.reversed.toList();
    emit(CommodityGroupHierarchyFetchedState(
        commodityGroupHierarchies: commodityGroupHierarchies));
  }
}
