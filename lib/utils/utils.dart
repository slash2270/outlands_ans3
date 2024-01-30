class Utils {

  /// view
  static const String id = 'id';
  static const String teacherId = 't_id';
  static const String studentId = 's_id';
  static const String courseId = 'c_id';
  static const String teacherPassword = 't_password';
  static const String studentPassword = 's_password';
  static const String teacherName = 't_name';
  static const String studentName = 's_name';
  static const String courseName = 'c_name';
  static const String courses = 'c_list';
  /// api
  static const String api = 'API';
  static const String baseUrl = '';
  static const Map<String, dynamic> headers = {'content-type': ['application/json']};
  static const String getCourses = '/getCourses';
  static const String getTeachers = '/getTeachers';
  static const String getTeachersCourses = '/getTeachersCourses';
  static const String getStudents = '/getStudents';
  static const String updateCourses = '/updateCourses';
  static const String addTeacher = '/addTeacher';
  static const String addCourses = '/addCourses';
  static const String deleteCourses = '/deleteCourses';

}