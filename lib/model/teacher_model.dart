

import '../utils/utils.dart';

class TeacherModel {

  int id = 0;
  String teacherId = '';
  String teacherPassword = '';
  String teacherName = '';
  String courseId = '';
  String courseName = '';
  TeacherModel(this.id, this.teacherId, this.teacherPassword, this.teacherName, this.courseId, this.courseName);

  Map<String, Object> toMap() {
    Map<String, Object> map = <String, Object>{
      Utils.teacherId: teacherId,
      Utils.teacherName: teacherName,
      Utils.teacherPassword: teacherPassword,
      Utils.courseId: courseId,
      Utils.courseName: courseName,
    };
    if (id > 0) {
      map[Utils.id] = id;
    }
    return map;
  }

  TeacherModel.fromMap(Map<dynamic, dynamic> map) {
    id = map[Utils.id];
    teacherId = map[Utils.teacherId];
    teacherPassword = map[Utils.teacherPassword];
    teacherName = map[Utils.teacherName];
    courseId = map[Utils.courseId];
    courseName = map[Utils.courseName];
  }

}