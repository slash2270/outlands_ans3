

import '../utils/utils.dart';

class CourseModel {

  String? courseId;
  String? courseName;
  CourseModel(this.courseId, this.courseName);

  Map<String, Object> toJson() {
    Map<String, Object> map = <String, Object>{
      Utils.courseId: courseId ?? "",
      Utils.courseName: courseName ?? "",
    };
    return map;
  }

  CourseModel.fromJson(Map<String, dynamic> map) {
    courseId = map[Utils.courseId];
    courseName = map[Utils.courseName];
  }

}