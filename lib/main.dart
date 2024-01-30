import 'dart:developer';

import 'package:outlands_ans3/test.dart';
import 'package:test/test.dart';

void main() {
  _test();
}

void _test() {
  final goTest = Test();
  // true = 1, false = 0, error = -1
  group('Test start, api retrofit', () {
    test('start value should be null', () async {
      await goTest.getTeachersCourses(teacherId: 'T00001');
      expect(goTest.code, 1);
    });

    test('start value should be null', () async {
      await goTest.addTeacher(teacherId: 'T00001', teacherPassword: 't00001', teacherName: '王小明');
      expect(goTest.code, 1);
    });

    test('start value should be null', () async {
      await goTest.deleteCourses(teacherId: 'T00001');
      expect(goTest.code, 1);
    });
  });
}