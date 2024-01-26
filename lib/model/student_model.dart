import '../utils/utils.dart';

class StudentModel {

  int id = 0;
  String studentId = '';
  String studentPassword = '';
  String studentName = '';
  String courseId = '';
  StudentModel(this.id, this.studentId, this.studentPassword, this.studentName, this.courseId);

  Map<String, Object> toMap() {
    Map<String, Object> map = <String, Object>{
      Utils.studentId: studentId,
      Utils.studentPassword: studentPassword,
      Utils.studentName: studentName,
      Utils.courseId: courseId,
    };
    if (id > 0) {
      map[Utils.id] = id;
    }
    return map;
  }

  StudentModel.fromMap(Map<dynamic, dynamic> map) {
    id = map[Utils.id];
    studentId = map[Utils.studentId];
    studentPassword = map[Utils.studentPassword];
    studentName = map[Utils.studentName];
    courseId = map[Utils.courseId];
  }

}