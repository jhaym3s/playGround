import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomFadeAnimation extends StatefulWidget {
  const CustomFadeAnimation({ Key key }) : super(key: key);

  @override
  _CustomFadeAnimationState createState() => _CustomFadeAnimationState();
}

class _CustomFadeAnimationState extends State<CustomFadeAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: DefaultTextStyle(
          style: TextStyle(color: Colors.black,fontSize: 30),
                  child: AnimatedTextKit(
      animatedTexts: [
          FadeAnimatedText('Try',fadeInEnd: 0.9,fadeOutBegin: 1,),
          FadeAnimatedText('Fail',),
          FadeAnimatedText('Then try again'),
      ],
      repeatForever: true,
    ),
        ),
    ),
    );
  }
}