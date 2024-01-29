import 'dart:convert';
import 'package:dio/dio.dart';
import 'logger.dart';

class DioInterceptor extends Interceptor {
  late DateTime startTime;
  late DateTime endTime;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    startTime = DateTime.now();
    if (options.data is FormData) {
      return handler.next(options);
    }
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    endTime = DateTime.now();
    int duration = endTime.difference(startTime).inMilliseconds;
    try {
      if (response.data['data'] != null) {
        response.data = jsonDecode(response.data);
      }

      Map logData = {
        'path': response.requestOptions.path,
        'data': response.data,
        'duration': duration
      };
      logger.i(logData);
    } catch (e) {
      logger.e("错误：$e");
    }

    return handler.next(response);
  }
}