import '../model/result.dart';

typedef Json = Map<String, dynamic>;
typedef AsyncJson = Future<Json>;
typedef AsyncResult<T> = Future<Result<T>>;

extension GetRsult on Json {
  dynamic get data => this['data'];
  String? get msg => this['msg'];
  int get code => this['code'];
  bool get isSuccess => code == 1;
}
