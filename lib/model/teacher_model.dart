

import 'package:outlands_ans3/model/course_model.dart';

import '../utils/utils.dart';

class TeacherModel {

  int id = 0;
  String teacherId = '';
  String teacherPassword = '';
  String teacherName = '';
  List<CourseModel> courses = [];
  TeacherModel(this.id, this.teacherId, this.teacherPassword, this.teacherName, this.courses);

  Map<String, Object> toJson() {
    Map<String, Object> map = <String, Object>{
      Utils.id : id > 0 ? id : 0,
      Utils.teacherId: teacherId,
      Utils.teacherName: teacherName,
      Utils.teacherPassword: teacherPassword,
      Utils.courses: courses.isNotEmpty ? courses : [],
    };
    return map;
  }

  TeacherModel.fromJson(Map<String, dynamic> map) {
    id = map[Utils.id];
    teacherId = map[Utils.teacherId];
    teacherPassword = map[Utils.teacherPassword];
    teacherName = map[Utils.teacherName];
    courses = map[Utils.courses];
  }

}