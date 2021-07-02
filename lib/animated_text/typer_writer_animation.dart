import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';



class CustomTyperAnimation extends StatefulWidget {
  const CustomTyperAnimation({ Key key }) : super(key: key);

  @override
  _CustomTyperAnimationState createState() => _CustomTyperAnimationState();
}

class _CustomTyperAnimationState extends State<CustomTyperAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedTextKit(animatedTexts: [
          TypewriterAnimatedText(
            "Hi, Jhaymes :)",

            textStyle: TextStyle(fontSize:30),
            speed: Duration(milliseconds:100),
            cursor: "...",
            curve: Curves.bounceInOut
          ),

        ],
        isRepeatingAnimation: true,
        pause: Duration(milliseconds:300),
        displayFullTextOnTap: true,
        repeatForever: true,
        stopPauseOnTap: true,
        )
      ),
    );
  }
}