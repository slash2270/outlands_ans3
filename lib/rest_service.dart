import 'dart:developer';

import 'package:dio/dio.dart' hide Headers;
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:outlands_ans3/model/teacher_model.dart';
import 'package:outlands_ans3/service/rest_repo.dart';
import 'package:outlands_ans3/utils/logger.dart';
import 'package:outlands_ans3/utils/type_def.dart';
import 'package:outlands_ans3/utils/utils.dart';
import 'package:retrofit/retrofit.dart';

import 'mock_adapter.dart';
import 'model/result.dart';

part 'rest_service.g.dart';

// Result deserializeUser(Map<String, dynamic> json) => Result.fromJson(json);
//
// List<Result> deserializeUserList(List<Map<String, dynamic>> json) =>
//     json.map(Result.fromJson).toList();
//
// Map<String, dynamic> serializeUser(Result object) => object.toJson();
//
// List<Map<String, dynamic>> serializeUserList(List<Result> objects) =>
//     objects.map((e) => e.toJson()).toList();
//
// @JsonSerializable()
// class Result{
//   const Result();
//
//   factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ResultToJson(this);
//
//   Result _$ResultFromJson(Map<String, dynamic> json) => const Result();
//
//   Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{};
// }

@RestApi(parser: Parser.FlutterCompute)
abstract class RestService {
  factory RestService({Dio dio, String baseUrl}) = _RestService;

  @GET('/tags')
  Future<List<String>> getTags({@DioOptions() Options? options});

  @POST(Utils.getTeacher)
  AsyncResult<List<TeacherModel>?> getTeacher({@DioOptions() Options? options});

  // @GET('/users')
  // Future<List<User>> getUsers({@DioOptions() Options? options});
  //
  // @GET('/usersNullable')
  // Future<List<User>?> getUsersNullable({@DioOptions() Options? options});
  //
  // @GET('/userByKey')
  // Future<Map<String, User>> getUserByKey({@DioOptions() Options? options});
  //
  // @GET('/userByKeyNullable')
  // Future<Map<String, User>?> getUserByKeyNullable({
  //   @DioOptions() Options? options,
  // });
  //
  // @GET('/usersByKey')
  // Future<Map<String, List<User>>> getUsersByKey({
  //   @DioOptions() Options? options,
  // });
  //
  // @GET('/user')
  // Future<User> getUser({@DioOptions() Options? options});
  //
  // @GET('/userNullable')
  // Future<User?> getUserNullable({@DioOptions() Options? options});
  //
  // @PATCH('/user/{user}')
  // Future<void> patchUser({
  //   @Query('u') required User user,
  //   @DioOptions() Options? options,
  // });
  //
  // @PATCH('/userMap/{user}')
  // Future<void> patchUserMap({
  //   @Queries() required User user,
  //   @DioOptions() Options? options,
  // });
  //
  // @POST('/users')
  // Future<void> postUsers({
  //   @Body() required List<User> users,
  //   @DioOptions() Options? options,
  // });
  //
  // @POST('/user')
  // Future<void> postUser({
  //   @Body() required User user,
  //   @DioOptions() Options? options,
  // });
  //
  // @POST('/userNullable')
  // Future<void> postUserNullable({
  //   @Body() required User? user,
  //   @DioOptions() Options? options,
  // });
}

void test() {
  final api = RestService(baseUrl: MockAdapter.mockBase);
  // api.getUsers().then((it) {
  //   log(it.length.toString());
  // });
}
