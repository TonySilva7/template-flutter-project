import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class CustomDioBasic extends DioForNative {
  CustomDioBasic()
      : super(
          BaseOptions(
            baseUrl: 'https://jsonplaceholder.typicode.com',
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(minutes: 1),
          ),
        ) {
    interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      requestHeader: true,
      // error: true,
    ));
  }
}

/// Essa classe é um Singleton. Para acessar essa instância, use o método `getInstance()`.
/// É preciso passar o param [baseUrl] para o construtor. Veja um exemplo de como usar ela:
///
/// @param `baseUrl String` - URL base para todas as requisições da API
/// ```dart
/// final CustomDioMedium apiService1 = CustomDioMedium('https://api.example.com');
/// final CustomDioMedium apiService2 = CustomDioMedium('https://api.anotherexample.com');
/// ```
class CustomDioMedium {
  final Dio dio;

  CustomDioMedium(String baseUrl)
      : dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(minutes: 1),
          ),
        ) {
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      requestHeader: true,
    ));
  }

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) {
    return dio.get(path, queryParameters: queryParameters);
  }

  Future<Response> post(String path, dynamic data, {Map<String, dynamic>? queryParameters}) {
    return dio.post(path, data: data, queryParameters: queryParameters);
  }

  Future<Response> put(String path, dynamic data, {Map<String, dynamic>? queryParameters}) {
    return dio.put(path, data: data, queryParameters: queryParameters);
  }

  Future<Response> delete(String path, {Map<String, dynamic>? queryParameters}) {
    return dio.delete(path, queryParameters: queryParameters);
  }
}

class CustomDioAdvanced {
  final Dio dio;

  CustomDioAdvanced._(this.dio);

  static final Map<String, CustomDioAdvanced> _instances = {};

  static CustomDioAdvanced getInstance(String baseUrl) {
    if (!_instances.containsKey(baseUrl)) {
      final dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(minutes: 1),
        ),
      );

      dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
      ));

      _instances[baseUrl] = CustomDioAdvanced._(dio);
    }

    return _instances[baseUrl]!;
  }

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) {
    return dio.get(path, queryParameters: queryParameters);
  }

  Future<Response> post(String path, dynamic data, {Map<String, dynamic>? queryParameters}) {
    return dio.post(path, data: data, queryParameters: queryParameters);
  }

  Future<Response> put(String path, dynamic data, {Map<String, dynamic>? queryParameters}) {
    return dio.put(path, data: data, queryParameters: queryParameters);
  }

  Future<Response> delete(String path, {Map<String, dynamic>? queryParameters}) {
    return dio.delete(path, queryParameters: queryParameters);
  }
}
