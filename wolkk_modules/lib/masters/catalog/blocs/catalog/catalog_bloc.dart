import 'package:wolkk_core/wolkk_core.dart';

import '../../../../utils/transformer.dart';
import '../../../commodity_group/commodity_group.dart';
import '../../../product/product.dart';
import '../../models/models.dart';

part 'catalog_bloc.freezed.dart';
part 'catalog_event.dart';
part 'catalog_state.dart';

@singleton
class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc() : super(const CatalogState.initial()) {
    on<CatalogFetchEvent>(_fetch, transformer: Transformer.getEvent());
    on<CatalogFilterEvent>(_filter, transformer: Transformer.getEvent());
  }

  List<CatalogModel> catalogs = [];

  void _fetch(
    CatalogFetchEvent event,
    Emitter<CatalogState> emit,
  ) {
    emit(const CatalogLoadingState());
    catalogs.clear();
    List<CommodityGroupModel> commodityGroups =
        GetIt.I<CommodityGroupBloc>().commodityGroups;
    List<ProductModel> products = GetIt.I<ProductBloc>().products;
    if (commodityGroups.isNotEmpty) {
      catalogs
          .addAll(commodityGroups.map((e) => CatalogModel(commodityGroup: e)));
    }
    if (products.isNotEmpty) {
      catalogs.addAll(products.map((e) => CatalogModel(product: e)));
    }
    emit(CatalogFetchedState(catalogs: catalogs));
  }

  void _filter(CatalogFilterEvent event, Emitter<CatalogState> emit) {
    String idCommodityGroup = event.idCommodityGroup ?? '';
    String keywords = event.keywords ?? '';
    List<CatalogModel> filteredCatalogs = [];
    filteredCatalogs = catalogs
        .where((element) =>
            (idCommodityGroup.isNotEmpty &&
                ((element.commodityGroup != null &&
                        element.commodityGroup!.parentCommodityGroup != null &&
                        element.commodityGroup!.parentCommodityGroup!.id ==
                            idCommodityGroup) ||
                    (element.product != null &&
                        element.product!.commodityGroup.id ==
                            idCommodityGroup))) ||
            (keywords.isNotEmpty &&
                ((element.commodityGroup != null &&
                        element.commodityGroup!.name.contains(keywords)) ||
                    (element.product != null &&
                        element.product!.name.contains(keywords)))))
        .toList();
    emit(CatalogFetchedState(catalogs: filteredCatalogs));
  }
}
