import 'dart:convert';

class Teacher {
  const Teacher({required this.id, required this.courses});

  final String id;
  final List<String> courses;

  factory Teacher.fromJson(Map<String, dynamic> json) =>
      Teacher(
          id: json["id"],
          courses: json['courses'],
      );

  factory Teacher.fromJsonString(String jsonString) => Teacher.fromJson(json.decode(jsonString));

  Map<String, dynamic> toJson() => {
    "id": id,
    "courses": courses,
  };

  String toJsonString(Teacher data) => json.encode(data.toJson());
}