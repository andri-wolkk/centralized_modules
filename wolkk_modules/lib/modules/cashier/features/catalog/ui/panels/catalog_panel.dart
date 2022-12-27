import 'package:wolkk_core/wolkk_core.dart';

import '../../../../../../masters/masters.dart';

class CatalogPanel extends StatelessWidget {
  const CatalogPanel({super.key, required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      childAspectRatio: (MediaQuery.of(context).size.height / 2) /
          (MediaQuery.of(context).size.width / 2),
      crossAxisCount: 4,
      mainAxisSpacing: 15.w,
      crossAxisSpacing: 15.w,
      physics: const AlwaysScrollableScrollPhysics(),
      children: products
          .map((product) => ProductCardWidget(product: product))
          .toList(),
    );
  }
}
