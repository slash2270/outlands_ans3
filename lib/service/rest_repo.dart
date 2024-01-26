import 'dart:developer';
import 'package:dio/dio.dart';
import '../mock_adapter.dart';

class RestRepo {
  const RestRepo();

  Dio setDio() {
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 300),
        contentType: Headers.formUrlEncodedContentType,
      ),
    );
    dio.httpClientAdapter = MockAdapter();
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          log(options.extra.toString());
          log(options.baseUrl);
          log(options.method);
          log(options.headers.toString());
          handler.next(options);
        },
      ),
    );
    return dio;
  }

}