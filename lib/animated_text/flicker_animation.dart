import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomFlickerAnimation extends StatefulWidget {
  const CustomFlickerAnimation({ Key key }) : super(key: key);

  @override
  _CustomFlickerAnimationState createState() => _CustomFlickerAnimationState();
}

class _CustomFlickerAnimationState extends State<CustomFlickerAnimation> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: Center(
        child: DefaultTextStyle(
          style: TextStyle(color: Colors.purple, fontSize: 50),
                  child: AnimatedTextKit(
          animatedTexts: [
            FlickerAnimatedText('Yay Party!!!',entryEnd:1 ),
          FlickerAnimatedText('Geeks only'),
          ],
       repeatForever: true,
       
      ),
        ),
    ),
    );
  }
}