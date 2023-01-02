import 'package:wolkk_core/wolkk_core.dart';

import '../../models/models.dart';

abstract class ProductLocalRepository {
  Future<Either<LocalFailure, List<ProductModel>>> fetch({
    required String path,
  });
}

@LazySingleton(as: ProductLocalRepository)
class ProductLocalRepositoryImpl implements ProductLocalRepository {
  @override
  Future<Either<LocalFailure, List<ProductModel>>> fetch({
    required String path,
  }) async {
    try {
      final response = await rootBundle.loadString(path);
      if (response.isNotEmpty) {
        List results = jsonDecode(response)['results'];
        List<ProductModel> products = [];
        products.addAll(results.map((e) => ProductModel.fromJson(e)));
        return Right(products);
      } else {
        return const Left(
          LocalFailure(
            code: 'NO_DATA',
            message: 'No data product in local source...',
          ),
        );
      }
    } on Exception catch (e) {
      throw LocalException(message: e.toString());
    }
  }
}
