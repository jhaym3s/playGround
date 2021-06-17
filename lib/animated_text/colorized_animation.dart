import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomColorizedAnimation extends StatefulWidget {
  const CustomColorizedAnimation({ Key key }) : super(key: key);

  @override
  _CustomColorizedAnimationState createState() => _CustomColorizedAnimationState();
}


 

const colorizeTextStyle = TextStyle(
  fontSize: 50.0,
);
class _CustomColorizedAnimationState extends State<CustomColorizedAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
      AnimatedTextKit(
    animatedTexts: [
      ColorizeAnimatedText(
        'Google',
        textStyle: colorizeTextStyle,
        colors:[
          Colors.red,
          Colors.blue,
          Colors.yellow,
          Colors.green,
        ],
      ),
      ColorizeAnimatedText(
        'Flutter',
        textStyle: colorizeTextStyle,
        colors: [Colors.blue,Colors.white],
      ),
      ColorizeAnimatedText(
        'Joseph\'s coat',
        textStyle: colorizeTextStyle,
        colors: [ 
        Colors.purple,
        Colors.blue,
        Colors.green,
        Colors.purpleAccent,
        Colors.red,],
      ),
    ],
    isRepeatingAnimation: true,
    repeatForever: true,
  ),),
    );
  }
}