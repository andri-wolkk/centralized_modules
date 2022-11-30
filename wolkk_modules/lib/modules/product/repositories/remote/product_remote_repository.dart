import 'package:wolkk_core/wolkk_core.dart';

import '../../../modules.dart';

abstract class ProductRemoteRepository {
  Future<Either<ServerFailure, List<ProductModel>>> fetchProducts({
    required String key,
    required String source,
  });
}

@LazySingleton(as: ProductRemoteRepository)
class ProductRemoteRepositoryImpl implements ProductRemoteRepository {
  List<ProductModel> listProduct = <ProductModel>[];

  @override
  Future<Either<ServerFailure, List<ProductModel>>> fetchProducts({
    required String key,
    required String source,
  }) async {
    try {
      var response = await rootBundle.loadString(source);
      final data = await json.decode(response);
      if (data.isNotEmpty) {
        listProduct.clear();
        data[key].forEach((value) {
          listProduct.add(ProductModel.fromJson(value));
        });
        return Right(listProduct);
      } else {
        return const Left(
          ServerFailure(
            code: 'UNEXPECTED_FAILURE',
            message: 'Failed to fetch product in remote source...',
            statusCode: 500,
          ),
        );
      }
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
