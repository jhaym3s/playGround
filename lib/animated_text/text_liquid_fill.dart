import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CustomLiquidityAnimation extends StatefulWidget {
  const CustomLiquidityAnimation({ Key key }) : super(key: key);

  @override
  _CustomLiquidityAnimationState createState() => _CustomLiquidityAnimationState();
}

class _CustomLiquidityAnimationState extends State<CustomLiquidityAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: DefaultTextStyle(
          style: TextStyle(color: Colors.purple, fontSize: 50),
                  child:TextLiquidFill(
    text: 'LIQUIDY',
    waveColor: Colors.blueAccent,
    boxBackgroundColor: Colors.red[50],
    textStyle: TextStyle(
      fontSize: 80.0,
      fontWeight: FontWeight.bold,
    ),
    boxHeight: 300.0,loadUntil: 0.5,waveDuration: Duration(seconds:2),
  ),
        ),
    ),
    );
  }
}