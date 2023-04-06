import 'package:courses_app/model/course.dart';

abstract class Repository {
  Future<List<Course>> getCourses(int domainFilter);
}
