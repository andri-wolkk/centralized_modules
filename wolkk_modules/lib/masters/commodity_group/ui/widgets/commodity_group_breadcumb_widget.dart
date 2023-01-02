import 'package:wolkk_core/wolkk_core.dart';

import '../../models/models.dart';

class CommodityGroupBreadcumbWidget extends StatelessWidget {
  const CommodityGroupBreadcumbWidget({
    super.key,
    required this.commodityGroup,
  });

  final CommodityGroupModel commodityGroup;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5.w, color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(5.w)),
      ),
      child: Center(
        child: Text(
          commodityGroup.name,
          style: TextStyle(fontSize: 18.sp),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
