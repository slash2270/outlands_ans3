import 'package:outlands_ans3/model/course_model.dart';

import '../utils/utils.dart';

class StudentModel {

  int id = 0;
  String studentId = '';
  String studentPassword = '';
  String studentName = '';
  List<CourseModel> courses = [];
  StudentModel(this.id, this.studentId, this.studentPassword, this.studentName, this.courses);

  Map<String, Object> toJson() {
    Map<String, Object> map = <String, Object>{
      Utils.id: id > 0 ? id : 0,
      Utils.studentId: studentId,
      Utils.studentPassword: studentPassword,
      Utils.studentName: studentName,
      Utils.courses: courses.isEmpty ? [] : courses,
    };
    return map;
  }

  StudentModel.fromJson(Map<String, dynamic> map) {
    id = map[Utils.id];
    studentId = map[Utils.studentId];
    studentPassword = map[Utils.studentPassword];
    studentName = map[Utils.studentName];
    courses = map[Utils.courses];
  }

}