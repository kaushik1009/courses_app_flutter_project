import 'package:courses_app/ui/courses/courses_page.dart';
import 'package:courses_app/ui/filter/filter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'strings.dart';

class CoursesApp extends StatelessWidget {
  const CoursesApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appTitle),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () => Navigator.of(context).push<MaterialPageRoute>(
              MaterialPageRoute(builder: (_) => const FilterPage()),
            ),
          )
        ],
      ),
      body: const CoursesPage(),
    );
  }
}
