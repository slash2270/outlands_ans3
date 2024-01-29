import 'package:dio/dio.dart';
import 'package:outlands_ans3/model/result.dart';
import 'package:outlands_ans3/model/student_model.dart';
import 'package:outlands_ans3/service/rest_service.dart';
import 'package:outlands_ans3/utils/dio_interceptor.dart';

import '../model/course_model.dart';
import '../model/teacher_model.dart';
import '../utils/type_def.dart';

class RestRepo {
  RestRepo();

  Dio setDio() {
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 300),
        contentType: Headers.formUrlEncodedContentType,
      ),
    );
    dio.interceptors.add(DioInterceptor());
    return dio;
  }

  late final RestService _service = RestService(dio: setDio());

  AsyncResult<List<CourseModel?>?> getCourses() =>
      _service.getCourses().deserializeJsonListBy((list) => list.map(CourseModel.fromJson).toList()).guard;

  AsyncResult<List<TeacherModel?>?> getTeachers() =>
      _service.getCourses().deserializeJsonListBy((list) => list.map(TeacherModel.fromJson).toList()).guard;

  AsyncResult<TeacherModel?> getTeachersCourses({required String teacherId}) =>
      _service.getTeachersCourses(teacherId: teacherId).deserializeJsonBy(TeacherModel.fromJson).guard;

  AsyncResult<List<StudentModel?>?> getStudents() =>
      _service.getStudents().deserializeJsonListBy((list) => list.map(StudentModel.fromJson).toList()).guard;

  AsyncResult<void> updateCourses({required String teacherId, required List<Map<String, dynamic>> coursesMap}) =>
      _service.updateCourses(teacherId: teacherId, coursesMap: coursesMap).deserialize().guard;

  AsyncResult<void> addTeacher({required String teacherId, required String teacherPassword, required String teacherName}) =>
      _service.addTeacher(teacherId: teacherId, teacherPassword: teacherPassword, teacherName: teacherName).deserialize().guard;

  AsyncResult<void> addCourses({required String teacherId, required List<Map<String, dynamic>> coursesMap}) =>
      _service.addCourses(teacherId: teacherId, coursesMap: coursesMap).deserialize().guard;

  AsyncResult<void> deleteCourses({required String teacherId}) =>
      _service.deleteCourses(teacherId: teacherId).deserialize().guard;
}