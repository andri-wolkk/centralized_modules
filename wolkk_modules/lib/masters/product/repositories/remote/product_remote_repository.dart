import 'package:wolkk_core/wolkk_core.dart';

import '../../../../api/api.dart';
import '../../models/models.dart';
import 'image_remote_repository.dart';

abstract class ProductRemoteRepository {
  Future<Either<ServerFailure, List<ProductModel>>> fetch({
    required String path,
  });

  Future<Either<ServerFailure, List<StockModel>>> getStock({
    required String id,
    required String path,
  });
}

@LazySingleton(as: ProductRemoteRepository)
class ProductRemoteRepositoryImpl implements ProductRemoteRepository {
  ProductRemoteRepositoryImpl({
    required this.api,
    required this.imageRemoteRepository,
  });

  final ApiService api;
  final ImageRemoteRepository imageRemoteRepository;

  @override
  Future<Either<ServerFailure, List<ProductModel>>> fetch({
    required String path,
  }) async {
    try {
      final response = await api.get(path: path);
      final stopwatch = Stopwatch()..start();
      if (response.statusCode == 200) {
        List<ProductModel> products = [];
        for (var data in response.data['results']) {
          ProductModel product = ProductModel.fromJson(data);
          if (product.trackInventory == true) {
            List<StockModel> stocks = [];
            await getStock(
              id: product.id,
              path: '/products/${product.id}/stocks',
            ).then((value) {
              value.fold(
                (l) => stocks = [],
                (r) => stocks = r,
              );
              product = product.copyWith(stocks: stocks);
            });
          }
          if (product.image != null) {
            String imageBinary = '';
            await imageRemoteRepository
                .get(id: product.image!.id, path: '/images')
                .then((value) {
              value.fold(
                (l) => imageBinary = '',
                (r) => imageBinary = r,
              );
              product = product.copyWith(imageBinary: imageBinary);
            });
          }
          products.add(product);
        }
        stopwatch.stop();
        log('[debug] time : executed in ${stopwatch.elapsed}');
        return Right(products);
      } else {
        return Left(
          ServerFailure(
            code: 'UNEXPECTED_FAILURE',
            message: 'Failed to fetch product in remote source...',
            statusCode: response.statusCode!,
          ),
        );
      }
    } on DioError catch (e) {
      return Left(
        ServerFailure(
          code: (e.response?.statusCode).toString(),
          message: e.response?.data['message'],
          statusCode: (e.response?.statusCode)!,
        ),
      );
    } on Exception catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<Either<ServerFailure, List<StockModel>>> getStock({
    required String id,
    required String path,
  }) async {
    try {
      final response = await api.get(path: path);
      if (response.statusCode == 200) {
        List<StockModel> stocks = [];
        for (var data in response.data['results']) {
          StockModel stock = StockModel.fromJson(data);
          stocks.add(stock);
        }
        return Right(stocks);
      } else {
        return Left(
          ServerFailure(
            code: 'UNEXPECTED_FAILURE',
            message: 'Failed to fetch stock in remote source...',
            statusCode: response.statusCode!,
          ),
        );
      }
    } on DioError catch (e) {
      return Left(
        ServerFailure(
          code: (e.response?.statusCode).toString(),
          message: e.response?.data['message'],
          statusCode: (e.response?.statusCode)!,
        ),
      );
    } on Exception catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
