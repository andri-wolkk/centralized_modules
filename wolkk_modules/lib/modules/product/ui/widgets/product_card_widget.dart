import 'package:wolkk_modules/wolkk_modules.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.5.w),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.5.w, color: Colors.transparent),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
                image: DecorationImage(
                  image: product.imageBinary.isNotEmpty
                      ? Image.memory(base64Decode(product.imageBinary)).image
                      : Image.network(
                          'https://cdn3.iconfinder.com/data/icons/design-n-code/100/272127c4-8d19-4bd3-bd22-2b75ce94ccb4-512.png',
                        ).image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            product.name,
            style: TextStyle(fontSize: 20.sp),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 10.h),
          Text(
            product.prices.isNotEmpty ? '${product.prices[0].value}' : '0',
            style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          // Text(
          //   product.stocks.isNotEmpty
          //       ? 'Stock : ${product.stocks[0].amount.actual}'
          //       : 'Stock : 0',
          //   maxLines: 1,
          //   overflow: TextOverflow.ellipsis,
          // )
        ],
      ),
    );
  }
}
