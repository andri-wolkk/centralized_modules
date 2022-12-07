import 'package:wolkk_core/wolkk_core.dart';

import '../../../modules.dart';

abstract class ProductRemoteRepository {
  Future<Either<ServerFailure, List<ProductModel>>> fetchProducts({
    required String key,
    Options? options,
    required String path,
  });

  Future<Either<ServerFailure, ProductModel>> getProduct();

  Future<Either<ServerFailure, String>> getProductImage();

  Future<Either<ServerFailure, List<StockModel>>> getProductStock({
    required String id,
  });

  Future<Either<ServerFailure, List<ProductModel>>> searchProducts({
    required String keywords,
  });
}

@LazySingleton(as: ProductRemoteRepository)
class ProductRemoteRepositoryImpl implements ProductRemoteRepository {
  ProductRemoteRepositoryImpl({required this.dio});

  final Dio dio;
  List<ProductModel> products = <ProductModel>[];
  List<StockModel> stocks = <StockModel>[];

  @override
  Future<Either<ServerFailure, List<ProductModel>>> fetchProducts({
    required String key,
    Options? options,
    required String path,
  }) async {
    try {
      return await dio.get(path, options: options).then(
        (response) async {
          final stopwatch = Stopwatch()..start();
          if (response.statusCode == 200) {
            products.clear();
            for (var data in response.data[key]) {
              ProductModel product = ProductModel.fromJson(data);
              if (product.trackInventory == true) {
                List<StockModel> stocks = [];
                await getProductStock(id: product.id).then((value) async {
                  value.fold(
                    (l) => stocks = [],
                    (r) => stocks = r,
                  );
                  product = product.copyWith(stocks: stocks);
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
                code: response.statusCode.toString(),
                message: response.statusMessage!,
                statusCode: response.statusCode!,
              ),
            );
          }
        },
      );
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
  Future<Either<ServerFailure, ProductModel>> getProduct() async {
    try {
      final response = await dio.get(
        'https://128.koronacloud.com/web/api/v3/accounts/58922ca4-bdb6-4a42-9fb3-e720f5c063c4/products/7b8a8198-2238-4c20-8902-59576f15a7ff',
        options: Options(headers: <String, String>{
          'authorization':
              'Basic ${base64.encode(utf8.encode('korona_integration:42ea2524-0bc6-470c-9ae2-5f3039d5eb6a'))}',
        }),
      );
      return Right(ProductModel.fromJson(response.data));
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
  Future<Either<ServerFailure, String>> getProductImage() async {
    try {
      final response = await dio.get(
        'https://128.koronacloud.com/web/api/v3/accounts/58922ca4-bdb6-4a42-9fb3-e720f5c063c4/images/c6b42ba3-adfd-410f-9946-83b4d9ecde55',
        options: Options(headers: <String, String>{
          'authorization':
              'Basic ${base64.encode(utf8.encode('korona_integration:42ea2524-0bc6-470c-9ae2-5f3039d5eb6a'))}',
        }),
      );
      if (response.statusCode == 200) {
        return Right(response.toString());
      } else {
        return Left(
          ServerFailure(
            code: response.statusCode.toString(),
            message: response.statusMessage!,
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
  Future<Either<ServerFailure, List<StockModel>>> getProductStock({
    required String id,
  }) async {
    try {
      return await dio
          .get(
        'https://128.koronacloud.com/web/api/v3/accounts/58922ca4-bdb6-4a42-9fb3-e720f5c063c4/products/$id/stocks',
        options: Options(headers: <String, String>{
          'authorization':
              'Basic ${base64.encode(utf8.encode('korona_integration:42ea2524-0bc6-470c-9ae2-5f3039d5eb6a'))}',
        }),
      )
          .then((response) {
        List<StockModel> stocks = [];
        if (response.statusCode == 200) {
          for (var data in response.data['results']) {
            StockModel stock = StockModel.fromJson(data);
            stocks.add(stock);
          }
          return Right(stocks);
        } else {
          return const Left(
            ServerFailure(
              code: 'UNEXPECTED_FAILURE',
              message: 'Failed to fetch product in remote source...',
              statusCode: 500,
            ),
          );
        }
      });
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
  Future<Either<ServerFailure, List<ProductModel>>> searchProducts({
    required String keywords,
  }) async {
    try {
      final response = await dio.get(
        'https://128.koronacloud.com/web/api/v3/accounts/58922ca4-bdb6-4a42-9fb3-e720f5c063c4/products?name=%$keywords%',
        options: Options(headers: <String, String>{
          'authorization':
              'Basic ${base64.encode(utf8.encode('korona_integration:42ea2524-0bc6-470c-9ae2-5f3039d5eb6a'))}',
        }),
      );
      if (response.data.isNotEmpty) {
        products.clear();
        response.data['results'].forEach((value) async {
          ProductModel product = ProductModel.fromJson(value);
          products.add(product);
        });
        return Right(products);
      } else {
        return const Left(
          ServerFailure(
            code: 'UNEXPECTED_FAILURE',
            message: 'Failed to fetch product in remote source...',
            statusCode: 500,
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
