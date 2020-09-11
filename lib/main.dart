import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:playground/slideItem.dart';
import 'package:playground/slide.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
