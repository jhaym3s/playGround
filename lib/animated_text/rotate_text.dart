import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class CustomTextRotateAnimation extends StatefulWidget {
  const CustomTextRotateAnimation({ Key key }) : super(key: key);

  @override
  _CustomTextRotateAnimationState createState() => _CustomTextRotateAnimationState();
}

class _CustomTextRotateAnimationState extends State<CustomTextRotateAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: AnimatedTextKit(
        animatedTexts: [
          RotateAnimatedText('AWESOME',transitionHeight: 100,rotateOut: true),
          RotateAnimatedText('OPTIMISTIC',),
          RotateAnimatedText('DIFFERENT'),
        ],
       repeatForever: true,
       
      ),
    ),
    );
  }
}