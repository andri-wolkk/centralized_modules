import 'package:wolkk_core/wolkk_core.dart';

abstract class ApiService {
  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<Response> post({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<Response> put({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<Response> patch({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<Response> delete({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });
}

@LazySingleton(as: ApiService)
class ApiServiceImpl implements ApiService {
  ApiServiceImpl({
    required this.baseUrl,
    required this.dio,
    required this.password,
    required this.username,
  }) : super() {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        options.headers['Content-Type'] = 'application/json';
        options.headers['Authorization'] =
            'Basic ${base64.encode(utf8.encode('$username:$password'))}';
        return handler.next(options);
      },
      onResponse: (response, handler) async => handler.next(response),
      onError: (error, handler) async {
        return handler.next(error);
      },
    ));
  }

  final String baseUrl;
  final Dio dio;
  final String password;
  final String username;

  @override
  Future<Response> delete({
    required String path,
    required data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } on DioError catch (e) {
      throw (DioError(
        requestOptions: e.requestOptions,
        response: e.response,
        type: e.type,
        error: e.error,
      ));
    }
  }

  @override
  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } on DioError catch (e) {
      throw (DioError(
        requestOptions: e.requestOptions,
        response: e.response,
        type: e.type,
        error: e.error,
      ));
    }
  }

  @override
  Future<Response> patch({
    required String path,
    required data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } on DioError catch (e) {
      throw (DioError(
        requestOptions: e.requestOptions,
        response: e.response,
        type: e.type,
        error: e.error,
      ));
    }
  }

  @override
  Future<Response> post({
    required String path,
    required data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } on DioError catch (e) {
      throw (DioError(
        requestOptions: e.requestOptions,
        response: e.response,
        type: e.type,
        error: e.error,
      ));
    }
  }

  @override
  Future<Response> put({
    required String path,
    required data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } on DioError catch (e) {
      throw (DioError(
        requestOptions: e.requestOptions,
        response: e.response,
        type: e.type,
        error: e.error,
      ));
    }
  }
}
