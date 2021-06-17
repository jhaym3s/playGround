import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomTyper extends StatefulWidget {
  const CustomTyper({ Key key }) : super(key: key);

  @override
  _CustomTyperState createState() => _CustomTyperState();
}

class _CustomTyperState extends State<CustomTyper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedTextKit(animatedTexts: [
          TyperAnimatedText('It is not enough to do your best,',curve: Curves.bounceIn),
        TyperAnimatedText('you must know what to do,'),
        TyperAnimatedText('and then do your best'),
        TyperAnimatedText('- W.Edwards Deming'),

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