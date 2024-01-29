part of 'rest_service.dart';

class _RestService implements RestService {
  _RestService({this.dio, this.baseUrl}) {
    dio ??= RestRepo().setDio();
    baseUrl ?? Utils.baseUrl;
  }
  Dio? dio;
  String? baseUrl;

  AsyncJson _post(
      String path, {
        Object? data,
      }) async {
    final result = (await dio?.post(path, data: data))?.data;
    if (result == null) {
      throw Exception('post data is null');
    }
    return result;
  }

  @override
  AsyncJson addCourses({required String teacherId, required List<Map<String, dynamic>> coursesMap}) =>
      _post('${baseUrl!}${Utils.addCourses}',
      data: {
        Utils.teacherId : teacherId,
        Utils.courses : coursesMap,
      });

  @override
  AsyncJson addTeacher({required String teacherId, required String teacherPassword, required String teacherName}) =>
      _post('${baseUrl!}${Utils.addTeacher}',
      data: {
        Utils.teacherId : teacherId,
        Utils.teacherPassword : teacherPassword,
        Utils.teacherName: teacherName,
      });

  @override
  AsyncJson getCourses() =>
      _post('${baseUrl!}${Utils.getCourses}');

  @override
  AsyncJson getStudents() =>
      _post('${baseUrl!}${Utils.getStudents}');

  @override
  AsyncJson getTeachers() =>
      _post('${baseUrl!}${Utils.getTeachers}');

  @override
  AsyncJson getTeachersCourses({required String teacherId}) =>
      _post('${baseUrl!}${Utils.getTeachersCourses}',
      data: {
        Utils.teacherId : teacherId
      });

  @override
  AsyncJson updateCourses({required String teacherId, required List<Map<String, dynamic>> coursesMap}) =>
      _post('${baseUrl!}${Utils.updateCourses}',
      data: {
        Utils.teacherId : teacherId,
        Utils.courses : coursesMap,
      });

  @override
  AsyncJson deleteCourses({required String teacherId}) =>
      _post('${baseUrl!}${Utils.deleteCourses}',
      data: {
        Utils.teacherId : teacherId,
      });

}