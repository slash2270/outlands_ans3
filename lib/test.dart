import 'dart:developer';
import 'package:outlands_ans3/repo/rest_repo.dart';
import 'model/teacher_model.dart';

class Test {

  int? code;

  Future<TeacherModel?> getTeachersCourses({required String teacherId}) async {
    TeacherModel? teacherModel;
    await RestRepo().getTeachersCourses(teacherId: teacherId).then((result) {
      log('Service updateCourses code: ${result.code}');
      code = result.code;
      try {
        if (result.code == 1) {
          teacherModel = result.data;
        } else {
          log('Service getTeachersCourses msg: ${result.msg ?? ''}');
        }
      } catch(e) {
        log('Service getTeachersCourses Error: $e');
      }
    });
    return teacherModel;
  }

  Future<void> updateCourses({required String teacherId, required List<Map<String, dynamic>> coursesMap}) async {
    await RestRepo().updateCourses(teacherId: teacherId, coursesMap: coursesMap).then((result) {
      log('Service updateCourses code: ${result.code}');
      code = result.code;
      try {
        if (result.code == 1) {
        } else {
          log('Service updateCourses msg: ${result.msg ?? ''}');
        }
      } catch(e) {
        log('Service updateCourses Error: $e');
      }
    });
  }

  Future<void> addTeacher({required String teacherId, required String teacherPassword, required String teacherName}) async {
    await RestRepo().addTeacher(teacherId: teacherId, teacherPassword: teacherPassword, teacherName: teacherName).then((result) {
      log('Service addTeacher code: ${result.code}');
      code = result.code;
      try {
        if (result.code == 1) {
        } else {
          log('Service addTeacher msg: ${result.msg ?? ''}');
        }
      } catch(e) {
        log('Service addTeacher Error: $e');
      }
    });
  }

  Future<void> deleteCourses({required String teacherId}) async {
    await RestRepo().deleteCourses(teacherId: teacherId).then((result) {
      log('Service deleteCourses code: ${result.code}');
      code = result.code;
      try {
        if (result.code == 1) {
        } else {
          log('Service deleteCourses msg: ${result.msg ?? ''}');
        }
      } catch(e) {
        log('Service deleteCourses Error: $e');
      }
    });
  }

}