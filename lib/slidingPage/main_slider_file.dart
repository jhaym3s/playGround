import 'dart:async';

import 'package:flutter/material.dart';
import 'package:playground/slidingPage/slide.dart';
import 'package:playground/slidingPage/slideItem.dart';

class MainSlider extends StatefulWidget {
  @override
  _MainSliderState createState() => _MainSliderState();
}

class _MainSliderState extends State<MainSlider> {
  int currentPage = 0 ;
  final PageController controlsPage = PageController(
    initialPage: 0,
  );
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 6), (Timer timer) {
      if(currentPage < 2){
        currentPage = currentPage+1;
      }else {currentPage = 0 ;}
      controlsPage.animateToPage(currentPage, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
      //note that the duration here is the animation duration so it is not same as the one used in the timer
      //and the curve property is for the animation effect
    });
  }
  @override
  void dispose() {
    super.dispose();
    controlsPage.dispose();
  }
  _onChanged(int index){
    setState(() {
      currentPage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child:PageView.builder(itemBuilder: (context, index) {
                  return SlideItem(index);
                },
                  scrollDirection: Axis.horizontal,
                  controller: controlsPage,
                  onPageChanged: _onChanged,
                  itemCount: slideList.length,
                ),
              ),
              Column(
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text("Getting Started"),
                    color: Colors.blue,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
