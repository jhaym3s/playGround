import 'package:flutter/material.dart';
import 'package:playground/slidingPage/main_slider_file.dart';
import 'package:playground/transform/transform_file.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: TransformFile(),
    );
  }
}
