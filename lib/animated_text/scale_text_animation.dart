import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class CustomScaleTextAnimation extends StatefulWidget {
  const CustomScaleTextAnimation({ Key key }) : super(key: key);

  @override
  _CustomScaleTextAnimationState createState() => _CustomScaleTextAnimationState();
}

class _CustomScaleTextAnimationState extends State<CustomScaleTextAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      DefaultTextStyle(
        style: TextStyle(fontSize: 50, color: Colors.blue),
              child: Center(
          child: AnimatedTextKit(
            animatedTexts: [
            ScaleAnimatedText('Eat'),
            ScaleAnimatedText('Code',scalingFactor: 4.0),
             ScaleAnimatedText('Sleep',duration: Duration(milliseconds:1000)),//Scales faster
            
          ],
           isRepeatingAnimation: true,
            pause: Duration(milliseconds:300),
            repeatForever: true,

            ),
        ),
      )
    );
  }
}
