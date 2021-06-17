import 'package:flutter/material.dart';
import 'package:playground/animated_text/flicker_animation.dart';
import 'package:playground/animated_text/rotate_text.dart';
import 'package:playground/animated_text/scale_text_animation.dart';
import 'package:playground/animated_text/typer_writer_animation.dart';
import 'package:playground/bar_charts/bar_charts.dart';
import 'animated_text/colorized_animation.dart';
import 'animated_text/fade_animation.dart';
import 'package:playground/images_file/image_screen.dart';
import 'package:playground/slidingPage/main_slider_file.dart';
import 'package:playground/transform/scale_drawer.dart';
import 'package:playground/transform/guitar_drawer.dart';
import 'package:playground/transform/transform_file.dart';
import 'package:playground/url_launching/web_launching.dart';
import 'package:url_launcher/url_launcher.dart';
import 'animated_text/text_liquid_fill.dart';
import 'animated_text/typer.dart';
import 'animated_text/wavy animation.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playground',
      home: CustomTyperAnimation(),
    );
  }
}

  

