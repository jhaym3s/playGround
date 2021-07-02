import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomWavyAnimation extends StatefulWidget {
  const CustomWavyAnimation({ Key key }) : super(key: key);

  @override
  _CustomWavyAnimationState createState() => _CustomWavyAnimationState();
}

class _CustomWavyAnimationState extends State<CustomWavyAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: DefaultTextStyle(
          style: TextStyle(color: Colors.black,fontSize: 30),
                  child:AnimatedTextKit(
    animatedTexts: [
      WavyAnimatedText('OMG wow!!!',),
      WavyAnimatedText('Text is making waves. '),
    ],
    isRepeatingAnimation: true,
    repeatForever: true,
  ),
        ),
    ),
    );
  }
}