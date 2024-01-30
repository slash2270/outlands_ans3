import 'dart:developer';

import 'package:dio/dio.dart' hide Headers;
import 'package:outlands_ans3/repo/rest_repo.dart';
import 'package:outlands_ans3/utils/type_def.dart';
import 'package:outlands_ans3/utils/utils.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_service.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class RestService {
  factory RestService({Dio dio, String baseUrl}) = _RestService;

  /// 課程列表
  @POST(Utils.getCourses)
  AsyncJson getCourses();

  /// 老師列表
  @POST(Utils.getTeachers)
  AsyncJson getTeachers();

  /// 學生列表
  @POST(Utils.getStudents)
  AsyncJson getStudents();

  /// 老師課程列表
  @PATCH('${Utils.getTeachersCourses}/{id}')
  AsyncJson getTeachersCourses({@Path() required String teacherId});

  /// 更新課程內容
  @PATCH('${Utils.updateCourses}/{id}')
  AsyncJson updateCourses({@Path() required String teacherId, @Body() required List<Map<String, dynamic>> coursesMap});

  /// 新增老師
  @POST(Utils.addTeacher)
  AsyncJson addTeacher({@Part() required String teacherId, @Part() required String teacherPassword, @Part() required String teacherName});

  /// 新增老師課程
  @PATCH('${Utils.addCourses}/{id}')
  AsyncJson addCourses({@Path() required String teacherId, @Body() required List<Map<String, dynamic>> coursesMap});

  /// 刪除課程
  @DELETE('${Utils.addCourses}/{id}')
  AsyncJson deleteCourses({@Path() required String teacherId});

}