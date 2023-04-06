import 'package:courses_app/courses_app.dart';
import 'package:courses_app/state/filter_state_container.dart';
import 'package:flutter/material.dart';
import 'strings.dart';

void main() => runApp((FilterStateContainer(
      child: MaterialApp(
        title: Strings.appTitle,
        theme: ThemeData(primaryColor: Colors.purple.shade800),
        home: const CoursesApp(),
      ),
    )));
