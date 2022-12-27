import 'package:wolkk_core/wolkk_core.dart';

import '../../../../api/api.dart';
import '../../../masters.dart';

abstract class ProductRemoteRepository {
  Future<Either<ServerFailure, List<ProductModel>>> fetch({
    required String path,
  });

  // Future<Either<ServerFailure, ProductModel>> get();

  Future<Either<ServerFailure, List<StockModel>>> getStock({
    required String id,
    required String path,
  });

  // Future<Either<ServerFailure, List<ProductModel>>> search({
  //   required String keywords,
  // });
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
        log(jsonEncode(products));
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

  // @override
  // Future<Either<ServerFailure, ProductModel>> get() async {
  //   try {
  //     final response = await dio.get(
  //       'https://128.koronacloud.com/web/api/v3/accounts/58922ca4-bdb6-4a42-9fb3-e720f5c063c4/products/7b8a8198-2238-4c20-8902-59576f15a7ff',
  //       options: Options(headers: <String, String>{
  //         'authorization':
  //             'Basic ${base64.encode(utf8.encode('korona_integration:42ea2524-0bc6-470c-9ae2-5f3039d5eb6a'))}',
  //       }),
  //     );
  //     return Right(ProductModel.fromJson(response.data));
  //   } on DioError catch (e) {
  //     return Left(
  //       ServerFailure(
  //         code: (e.response?.statusCode).toString(),
  //         message: e.response?.data['message'],
  //         statusCode: (e.response?.statusCode)!,
  //       ),
  //     );
  //   } on Exception catch (e) {
  //     throw ServerException(message: e.toString());
  //   }
  // }

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
          // log('[debug] stock : $data');
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
      // return await dio.get('$url/$id/$path', options: options).then((response) {
      //   List<StockModel> stocks = [];
      //   if (response.statusCode == 200) {
      //     for (var data in response.data[key]) {
      //       StockModel stock = StockModel.fromJson(data);
      //       stocks.add(stock);
      //     }
      //     return Right(stocks);
      //   } else {
      //     return const Left(
      //       ServerFailure(
      //         code: 'UNEXPECTED_FAILURE',
      //         message: 'Failed to fetch product in remote source...',
      //         statusCode: 500,
      //       ),
      //     );
      //   }
      // });
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

  // @override
  // Future<Either<ServerFailure, List<ProductModel>>> search({
  //   required String keywords,
  // }) async {
  //   try {
  //     final response = await dio.get(
  //       'https://128.koronacloud.com/web/api/v3/accounts/58922ca4-bdb6-4a42-9fb3-e720f5c063c4/products?name=%$keywords%',
  //       options: Options(headers: <String, String>{
  //         'authorization':
  //             'Basic ${base64.encode(utf8.encode('korona_integration:42ea2524-0bc6-470c-9ae2-5f3039d5eb6a'))}',
  //       }),
  //     );
  //     if (response.data.isNotEmpty) {
  //       List<ProductModel> products = [];
  //       response.data['results'].forEach((value) async {
  //         ProductModel product = ProductModel.fromJson(value);
  //         products.add(product);
  //       });
  //       return Right(products);
  //     } else {
  //       return const Left(
  //         ServerFailure(
  //           code: 'UNEXPECTED_FAILURE',
  //           message: 'Failed to fetch product in remote source...',
  //           statusCode: 500,
  //         ),
  //       );
  //     }
  //   } on DioError catch (e) {
  //     return Left(
  //       ServerFailure(
  //         code: (e.response?.statusCode).toString(),
  //         message: e.response?.data['message'],
  //         statusCode: (e.response?.statusCode)!,
  //       ),
  //     );
  //   } on Exception catch (e) {
  //     throw ServerException(message: e.toString());
  //   }
  // }
}
