import 'package:wolkk_core/wolkk_core.dart';

import '../../../../../../masters/masters.dart';

class CatalogPanel extends StatefulWidget {
  const CatalogPanel({super.key});

  @override
  State<CatalogPanel> createState() => _CatalogPanelState();
}

class _CatalogPanelState extends State<CatalogPanel> {
  final TextEditingController _searchController = TextEditingController();
  CommodityGroupModel? _selectedCommodityGroup;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onChangedCommodityGroup({required CommodityGroupModel commodityGroup}) {
    setState(() {
      _selectedCommodityGroup = commodityGroup;
    });
    GetIt.I<CatalogBloc>().add(
      CatalogEvent.filter(
        idCommodityGroup: commodityGroup.id,
        keywords: _searchController.text,
      ),
    );
    GetIt.I<CommodityGroupHierarchyBloc>()
        .add(CommodityGroupHierarchyFetchEvent(commodityGroup: commodityGroup));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      padding: EdgeInsets.only(top: 8.w),
      margin: EdgeInsets.only(top: 8.w, left: 8.w, right: 8.w),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 0.5.w, color: Colors.black),
          left: BorderSide(width: 0.5.w, color: Colors.black),
          right: BorderSide(width: 0.5.w, color: Colors.black),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 8.w, right: 8.w),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Search',
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.w, right: 8.w),
            child: BlocBuilder<CommodityGroupBloc, CommodityGroupState>(
              builder: (context, state) => state.maybeWhen(
                orElse: () => const SizedBox.shrink(),
                loading: () => const SizedBox.shrink(),
                fetched: (commodityGroups) => SizedBox(
                  height: 75.h,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: commodityGroups.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        _onChangedCommodityGroup(
                          commodityGroup: commodityGroups[index],
                        );
                      },
                      child: CommodityGroupCardWidget(
                        commodityGroup: commodityGroups[index],
                        isSelected:
                            _selectedCommodityGroup == commodityGroups[index],
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(width: 16.w),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.w, right: 8.w),
              child: MultiBlocListener(
                listeners: [
                  BlocListener<CommodityGroupBloc, CommodityGroupState>(
                    listener: (context, state) {
                      if (state is CommodityGroupFetchedState) {
                        GetIt.I<CatalogBloc>().add(const CatalogFetchEvent());
                      }
                    },
                  ),
                  BlocListener<ProductBloc, ProductState>(
                    listener: (context, state) {
                      if (state is ProductFetchedState) {
                        GetIt.I<CatalogBloc>().add(const CatalogFetchEvent());
                      }
                    },
                  ),
                ],
                child: BlocBuilder<CatalogBloc, CatalogState>(
                  builder: (context, state) => state.maybeWhen(
                    orElse: () => const SizedBox.shrink(),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    fetched: (catalogs) {
                      return GridView.count(
                        scrollDirection: Axis.vertical,
                        childAspectRatio:
                            (MediaQuery.of(context).size.height / 2) /
                                (MediaQuery.of(context).size.width / 2),
                        crossAxisCount: 4,
                        mainAxisSpacing: 15.w,
                        crossAxisSpacing: 15.w,
                        physics: const AlwaysScrollableScrollPhysics(),
                        children: catalogs.map((catalog) {
                          if (catalog.product != null) {
                            return ProductCatalogWidget(
                                product: catalog.product!);
                          } else {
                            return GestureDetector(
                              child: CommodityGroupCatalogWidget(
                                  commodityGroup: catalog.commodityGroup!),
                              onTap: () => _onChangedCommodityGroup(
                                  commodityGroup: catalog.commodityGroup!),
                            );
                          }
                        }).toList(),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          BlocBuilder<CommodityGroupHierarchyBloc,
              CommodityGroupHierarchyState>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              fetched: (commodityGroupHierarchies) => Container(
                height: 85.w,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.5.w, color: Colors.black),
                  ),
                ),
                padding: EdgeInsets.only(top: 20.w, bottom: 20.w),
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 15.w, right: 15.w),
                  itemCount: commodityGroupHierarchies.length,
                  itemBuilder: (context, index) =>
                      CommodityGroupBreadcumbWidget(
                          commodityGroup: commodityGroupHierarchies[index]),
                  separatorBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(8.w),
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
