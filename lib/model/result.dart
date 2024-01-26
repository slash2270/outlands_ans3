import '../utils/type_def.dart';

typedef FromJson<T> = T Function(Json);
typedef FromList<T> = T Function(List<Json>);

class Result<T> {
  Result({this.data, this.msg});
  final T? data;
  final String? msg;

  Result.deserializeJson(Json json, FromJson<T> fromJson)
      : data =json.data != null && json.data is Map ? fromJson(json.data) : null,
        msg = json.msg;

  Result.deserializeJsonList(Json json, FromList fromJson)
      : data = json.data != null ? fromJson(List<Json>.from(json.data)) : null,
        msg = json.msg;

  Result.deserialize(Json json)
      : data = json.data,
        msg = json.msg;
}

extension FutureDeserialize on AsyncJson {
  AsyncResult<T> deserializeJsonBy<T>(FromJson<T> fromJson) async => (await this).deserializeJsonBy(fromJson);

  AsyncResult<T> deserializeJsonListBy<T>(FromList<T> fromList) async => (await this).deserializeJsonListBy(fromList);

  AsyncResult<T> deserialize<T>() async => (await this).deserialize();
}

extension Deserialize on Json {
  Result<T> deserializeJsonBy<T>(FromJson<T> fromJson) => Result<T>.deserializeJson(this, fromJson);

  Result<T> deserializeJsonListBy<T>(FromList<T> fromList) => Result<T>.deserializeJsonList(this, fromList);

  Result<T> deserialize<T>() => Result<T>.deserialize(this);
}
