import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:outlands_ans3/repo/rest_repo.dart';
import 'package:outlands_ans3/utils/utils.dart';

import 'model/teacher_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Future<TeacherModel?> getTeachersCourses({required String teacherId}) async {
    TeacherModel? teacherModel;
    await RestRepo().getTeachersCourses(teacherId: teacherId).then((result) {
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
      log('Service updateCourses isSuccess: ${result.code == 1}');
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
      log('Service addTeacher isSuccess: ${result.code == 1}');
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
      log('Service deleteCourses isSuccess: ${result.code == 1}');
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('${Utils.api} Demo'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'See Function and Do Something',
            ),
          ],
        ),
      ),
    );
  }
}
