import '../utils/logger.dart';
import '../utils/type_def.dart';
import 'package:json_annotation/json_annotation.dart';

typedef FromJson<T> = T Function(Json);
typedef FromList<T> = T Function(List<Json>);

@JsonSerializable(genericArgumentFactories: true)
class Result<T> {
  const Result({this.data, this.msg, this.code = -1});
  final T? data;
  final String? msg;
  final int code;

  Result.deserializeJson(Json json, FromJson<T> fromJson)
      : data =json.data != null && json.data is Map ? fromJson(json.data) : null,
        msg = json.msg,
        code = json.code;

  Result.deserializeJsonList(Json json, FromList fromJson)
      : data = json.data != null ? fromJson(List<Json>.from(json.data)) : null,
        msg = json.msg,
        code = json.code;


  Result.deserialize(Json json)
      : data = json.data,
        msg = json.msg,
        code = json.code;

  @override
  String toString() => 'Result{code: $code, data: $data, msg: $msg}';
}

extension FutureDeserialize on AsyncJson {
  AsyncResult<T> deserialize<T>() async => (await this).deserialize();
  AsyncResult<T> deserializeJsonBy<T>(FromJson<T> fromJson) async => (await this).deserializeJsonBy(fromJson);
  AsyncResult<T> deserializeJsonListBy<T>(FromList<T> fromList) async => (await this).deserializeJsonListBy(fromList);
}

extension Deserialize on Json {
  Result<T> deserialize<T>() => Result<T>.deserialize(this);
  Result<T> deserializeJsonBy<T>(FromJson<T> fromJson) => Result<T>.deserializeJson(this, fromJson);
  Result<T> deserializeJsonListBy<T>(FromList<T> fromList) => Result<T>.deserializeJsonList(this, fromList);
}

extension Guard<T> on AsyncResult<T> {
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