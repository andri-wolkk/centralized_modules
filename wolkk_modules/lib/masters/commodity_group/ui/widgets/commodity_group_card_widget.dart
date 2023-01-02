import 'package:wolkk_core/wolkk_core.dart';

import '../../models/models.dart';

class CommodityGroupCardWidget extends StatelessWidget {
  const CommodityGroupCardWidget({
    super.key,
    required this.commodityGroup,
    required this.isSelected,
  });

  final CommodityGroupModel commodityGroup;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 201.w,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color:
            isSelected ? Colors.blueGrey.withOpacity(0.25) : Colors.transparent,
        border: Border.all(color: Colors.black, width: 0.5.w),
        borderRadius: BorderRadius.all(Radius.circular(5.w)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(commodityGroup.name),
          const Text('100 items'),
        ],
      ),
    );
  }
}
