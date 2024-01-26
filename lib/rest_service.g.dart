part of 'rest_service.dart';

class _RestService implements RestService {
  _RestService({
    this.dio,
    this.baseUrl
  }) {
    dio ??= const RestRepo().setDio();
    baseUrl ??= 'http://baidu.com';
  }

  Dio? dio;
  String? baseUrl;

  @override
  Future<List<String>> getTags({Options? options}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final newOptions = newRequestOptions(options);
    newOptions.extra.addAll(_extra);
    newOptions.headers.addAll(dio!.options.headers);
    newOptions.headers.addAll(_headers);
    final _result = await dio!.fetch<List<dynamic>>(newOptions.copyWith(
      method: 'GET',
      baseUrl: baseUrl ?? dio!.options.baseUrl,
      queryParameters: queryParameters,
      path: '/tags',
    )..data = _data);
    final value = _result.data!.cast<String>();
    return value;
  }

  @override
  AsyncResult<List<TeacherModel>?> getTeacher({Options? options}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final newOptions = newRequestOptions(options);
    newOptions.extra.addAll(_extra);
    newOptions.headers.addAll(dio!.options.headers);
    newOptions.headers.addAll(_headers);
    final _result = await dio!.fetch<List<dynamic>>(newOptions.copyWith(
      method: 'GET',
      baseUrl: baseUrl ?? dio!.options.baseUrl,
      queryParameters: queryParameters,
      path: Utils.getTeacher,
    )..data = _data);
    final value = _result.data!.cast<TeacherModel>();
    return value;
  }

  // @override
  // Future<List<String>?> getTagsNullable({Options? options}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final Map<String, dynamic>? _data = null;
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   final _result = await dio!.fetch<List<dynamic>>(newOptions.copyWith(
  //     method: 'GET',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/tagsNullable',
  //   )..data = _data);
  //   final value = _result.data?.cast<String>();
  //   return value;
  // }
  //
  // @override
  // Future<Map<String, String>> getTagByKey({Options? options}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final Map<String, dynamic>? _data = null;
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   final _result = await dio!.fetch<Map<String, dynamic>>(newOptions.copyWith(
  //     method: 'GET',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/tagByKey',
  //   )..data = _data);
  //   final value = _result.data!.cast<String, String>();
  //   return value;
  // }
  //
  // @override
  // Future<Map<String, String>?> getTagByKeyNullable({Options? options}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final Map<String, dynamic>? _data = null;
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   final _result = await dio!.fetch<Map<String, dynamic>>(newOptions.copyWith(
  //     method: 'GET',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/tagByKeyNullable',
  //   )..data = _data);
  //   final value = _result.data?.cast<String, String>();
  //   return value;
  // }
  //
  // @override
  // Future<String> getTag({
  //   required String contentType,
  //   Options? options,
  // }) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{r'Content-Type': contentType};
  //   _headers.removeWhere((k, v) => v == null);
  //   final Map<String, dynamic>? _data = null;
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   final _result = await dio!.fetch<String>(newOptions.copyWith(
  //     method: 'GET',
  //     contentType: contentType,
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/tag',
  //   )..data = _data);
  //   final value = _result.data!;
  //   return value;
  // }
  //
  // @override
  // Future<String?> getTagNullable({Options? options}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final Map<String, dynamic>? _data = null;
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   final _result = await dio!.fetch<String>(newOptions.copyWith(
  //     method: 'GET',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/tagNullable',
  //   )..data = _data);
  //   final value = _result.data;
  //   return value;
  // }
  //
  // @override
  // Future<List<User>> getUsers({Options? options}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final Map<String, dynamic>? _data = null;
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   final _result = await dio!.fetch<List<dynamic>>(newOptions.copyWith(
  //     method: 'GET',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/users',
  //   )..data = _data);
  //   var value = await compute(
  //     deserializeUserList,
  //     _result.data!.cast<Map<String, dynamic>>(),
  //   );
  //   return value;
  // }
  //
  // @override
  // Future<List<User>?> getUsersNullable({Options? options}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final Map<String, dynamic>? _data = null;
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   final _result = await dio!.fetch<List<dynamic>>(newOptions.copyWith(
  //     method: 'GET',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/usersNullable',
  //   )..data = _data);
  //   var value = _result.data == null
  //       ? null
  //       : await compute(
  //           deserializeUserList,
  //           _result.data!.cast<Map<String, dynamic>>(),
  //         );
  //   return value;
  // }
  //
  // @override
  // Future<Map<String, User>> getUserByKey({Options? options}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final Map<String, dynamic>? _data = null;
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   final _result = await dio!.fetch<Map<String, dynamic>>(newOptions.copyWith(
  //     method: 'GET',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/userByKey',
  //   )..data = _data);
  //   var value = Map.fromEntries(await Future.wait(_result.data!.entries.map(
  //       (e) async => MapEntry(e.key,
  //           await compute(deserializeUser, e.value as Map<String, dynamic>)))));
  //   return value;
  // }
  //
  // @override
  // Future<Map<String, User>?> getUserByKeyNullable({Options? options}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final Map<String, dynamic>? _data = null;
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   final _result = await dio!.fetch<Map<String, dynamic>>(newOptions.copyWith(
  //     method: 'GET',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/userByKeyNullable',
  //   )..data = _data);
  //   var value = _result.data == null
  //       ? null
  //       : Map.fromEntries(await Future.wait(_result.data!.entries.map(
  //           (e) async => MapEntry(
  //               e.key,
  //               await compute(
  //                   deserializeUser, e.value as Map<String, dynamic>)))));
  //   return value;
  // }
  //
  // @override
  // Future<Map<String, List<User>>> getUsersByKey({Options? options}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final Map<String, dynamic>? _data = null;
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   final _result = await dio!.fetch<Map<String, dynamic>>(newOptions.copyWith(
  //     method: 'GET',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/usersByKey',
  //   )..data = _data);
  //   var value = Map.fromEntries(await Future.wait(_result.data!.entries.map(
  //       (e) async => MapEntry(
  //           e.key,
  //           await compute(deserializeUserList,
  //               (e.value as List).cast<Map<String, dynamic>>())))));
  //   return value;
  // }
  //
  // @override
  // Future<User> getUser({Options? options}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final Map<String, dynamic>? _data = null;
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   final _result = await dio!.fetch<Map<String, dynamic>>(newOptions.copyWith(
  //     method: 'GET',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/user',
  //   )..data = _data);
  //   final value = await compute(deserializeUser, _result.data!);
  //   return value;
  // }
  //
  // @override
  // Future<User?> getUserNullable({Options? options}) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final Map<String, dynamic>? _data = null;
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   final _result = await dio!.fetch<Map<String, dynamic>?>(newOptions.copyWith(
  //     method: 'GET',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/userNullable',
  //   )..data = _data);
  //   final value = _result.data == null
  //       ? null
  //       : await compute(deserializeUser, _result.data!);
  //   return value;
  // }
  //
  // @override
  // Future<void> patchUser({
  //   required User user,
  //   Options? options,
  // }) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{
  //     r'u': await compute(serializeUser, user)
  //   };
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final Map<String, dynamic>? _data = null;
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   await dio!.fetch<void>(newOptions.copyWith(
  //     method: 'PATCH',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/user/{user}',
  //   )..data = _data);
  // }
  //
  // @override
  // Future<void> patchUserMap({
  //   required User user,
  //   Options? options,
  // }) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.addAll(await compute(serializeUser, user));
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final Map<String, dynamic>? _data = null;
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   await dio!.fetch<void>(newOptions.copyWith(
  //     method: 'PATCH',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/userMap/{user}',
  //   )..data = _data);
  // }
  //
  // @override
  // Future<void> postUsers({
  //   required List<User> users,
  //   Options? options,
  // }) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final _data = await compute(serializeUserList, users);
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   await dio!.fetch<void>(newOptions.copyWith(
  //     method: 'POST',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/users',
  //   )..data = _data);
  // }
  //
  // @override
  // Future<void> postUser({
  //   required User user,
  //   Options? options,
  // }) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final _data = <String, dynamic>{};
  //   _data.addAll(await compute(serializeUser, user));
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   await dio!.fetch<void>(newOptions.copyWith(
  //     method: 'POST',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/user',
  //   )..data = _data);
  // }
  //
  // @override
  // Future<void> postUserNullable({
  //   User? user,
  //   Options? options,
  // }) async {
  //   const _extra = <String, dynamic>{};
  //   final queryParameters = <String, dynamic>{};
  //   queryParameters.removeWhere((k, v) => v == null);
  //   final _headers = <String, dynamic>{};
  //   final _data = <String, dynamic>{};
  //   _data.addAll(user == null
  //       ? <String, dynamic>{}
  //       : await compute(serializeUser, user));
  //   final newOptions = newRequestOptions(options);
  //   newOptions.extra.addAll(_extra);
  //   newOptions.headers.addAll(dio!.options.headers);
  //   newOptions.headers.addAll(_headers);
  //   await dio!.fetch<void>(newOptions.copyWith(
  //     method: 'POST',
  //     baseUrl: baseUrl ?? dio!.options.baseUrl,
  //     queryParameters: queryParameters,
  //     path: '/userNullable',
  //   )..data = _data);
  // }

  RequestOptions newRequestOptions(Object? options) {
    if (options is RequestOptions) {
      return options as RequestOptions;
    }
    if (options is Options) {
      return RequestOptions(
        method: options.method,
        sendTimeout: options.sendTimeout,
        receiveTimeout: options.receiveTimeout,
        extra: options.extra,
        headers: options.headers,
        responseType: options.responseType,
        contentType: options.contentType.toString(),
        validateStatus: options.validateStatus,
        receiveDataWhenStatusError: options.receiveDataWhenStatusError,
        followRedirects: options.followRedirects,
        maxRedirects: options.maxRedirects,
        requestEncoder: options.requestEncoder,
        responseDecoder: options.responseDecoder,
        path: '',
      );
    }
    return RequestOptions(path: '');
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }

}

extension _Guard<T> on AsyncResult<T> {
  AsyncResult<T> get guard async {
    try {
      return await this;
    } catch (err, stack) {
      logger.e(err);
      logger.e(stack);
      return Result(msg: err.toString() + stack.toString());
    }
  }
}
