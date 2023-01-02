import 'package:wolkk_core/wolkk_core.dart';

import '../../models/models.dart';

class CommodityGroupCatalogWidget extends StatelessWidget {
  const CommodityGroupCatalogWidget({super.key, required this.commodityGroup});

  final CommodityGroupModel commodityGroup;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.5.w),
        borderRadius: BorderRadius.all(Radius.circular(5.w)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.5.w, color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(5.w)),
                image: DecorationImage(
                  image: Image.network(
                    'https://ui-avatars.com/api/?&background=E3E3E3&color=909090&name=${commodityGroup.name}&size=128&font-size=0.33',
                  ).image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            commodityGroup.name,
            style: TextStyle(fontSize: 20.sp),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.all(5.w),
            decoration: BoxDecoration(
              border: Border.all(width: 0.5.w, color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(5.w)),
            ),
            child: Text(
              'Commodity Group',
              style: TextStyle(fontSize: 18.sp),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
