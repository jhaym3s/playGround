import 'package:flutter/material.dart';
import 'dart:math';

class TransformFile extends StatefulWidget {
  @override
  _TransformFileState createState() => _TransformFileState();
}

class _TransformFileState extends State<TransformFile> {
  double sliderValue = 0;
  Widget slider(){
    return Slider(
      value: sliderValue,
        onChanged: (value) {
          setState(() {
            sliderValue = value;
          });
        },
      min: 0,
      max: 100,
    );
  }

  Widget rotate(){
    return Container(
      child: Transform.rotate(
       angle: sliderValue,
       //origin: Offset(0,sliderValue),
        child: Container(
          height:100.0,
          width: 100.0,
          color: Colors.purple,
        ),
      ),
    );
  }
  Widget translate(){
    return Container(
      child: Transform.translate(
       //origin: Offset(0,sliderValue),
        offset: Offset(0,sliderValue),
        child: Container(
          height:100.0,
          width: 100.0,
          color: Colors.purple,
        ),
      ),
    );
  }
  Widget skew(){
    return Container(
      child: Transform(
       //origin: Offset(0,sliderValue),
        transform: Matrix4.skewY(sliderValue /100),
        child: Container(
          height:100.0,
          width: 100.0,
          color: Colors.blue,
        ),
      ),
    );
  }
  Widget threeD(){
    return Container(
      child: Transform(
       //origin: Offset(0,sliderValue),
        transform: Matrix4.identity()..setEntry(3,2, sliderValue/1000)..rotateX(3.14/20),
        alignment: FractionalOffset.center,
        child: Container(
          height:100.0,
          width: 100.0,
          color: Colors.blue,
        ),
      ),
    );
  }
  Widget scale(){
    return Container(
      child: Transform.scale(
         // angle: sliderValue,
        //origin: Offset(0,0),
        scale: sliderValue/50,
        child: Container(
          height:sliderValue/2,
          width: sliderValue/2,
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  void initState() {
    sliderValue = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,),
            slider(),
            rotate(),
            SizedBox(height: 10,),
            scale(),
            SizedBox(height: 10,),
            translate(),
            SizedBox(height: 5,),
            skew(),
            SizedBox(height: 10),
            threeD(),

          ],
        ),
      )
    );
  }
}
