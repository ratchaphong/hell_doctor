import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class DioClient {
  static Dio? _dio;

  DioClient();

  Dio get client {
    if (_dio != null) {
      return _dio!;
    } else {
      _dio = _initClient();
      return _dio!;
    }
  }

  Dio _initClient() => Dio()
    ..options.baseUrl = 'https://fakestoreapi.com/'
    ..options.connectTimeout = const Duration(seconds: 2)
    ..options.receiveTimeout = const Duration(seconds: 2);
}
