import 'package:flutter/material.dart';
//import '../playGround/lib/slidingPage/slide.dart';
import 'package:playground/slidingPage/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SafeArea(
          child: CircleAvatar(
            backgroundImage: AssetImage(slideList[index].image),
            radius: 100,
          ),
        ),
        Text(slideList[index].title),
        Text(slideList[index].description),
      ],
    );
  }
}
