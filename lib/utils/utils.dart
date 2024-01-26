class Utils {

  /// view
  static const String api = 'Api';
  static const String teacher = 'Teacher';
  static const String student = 'Student';
  static const String account = '帳號:';
  static const String accountHint = '註冊不用輸入帳號, 註冊後畫面領取';
  static const String password = '密碼:';
  static const String passwordHint = '請輸入1位英文+5位數字';
  static const String signUp = '註冊';
  static const String login = '登入';
  static const String id = 'id';
  static const String teacherId = 't_id';
  static const String studentId = 's_id';
  static const String courseId = 'c_id';
  static const String teacherPassword = 't_password';
  static const String studentPassword = 's_password';
  static const String teacherName = 't_name';
  static const String studentName = 's_name';
  static const String course = '課程';
  static const String courseName = 'c_name';
  static const String courseHint = '請輸入課程名稱';
  static const List<String> listTeacher = [id, teacherId, teacherPassword, teacherName, courseId, courseName];
  static const List<String> listStudent = [id, studentId, studentPassword, studentName, courseId];
  /// api
  static const String GET = 'GET';
  static const String POST = 'POST';
  static const String getTeacher = '/getTeacher';
  static const String getStudent = '/getStudent';

}