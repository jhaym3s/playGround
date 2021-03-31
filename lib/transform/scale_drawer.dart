import 'package:flutter/material.dart';

class ScaleDrawer extends StatefulWidget {
  @override
  _ScaleDrawerState createState() => _ScaleDrawerState();
}

class _ScaleDrawerState extends State<ScaleDrawer> with SingleTickerProviderStateMixin{
 AnimationController _animationController ;
 @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 300));
  }
  // void _onDragStart(DragStartDetails details){
  // bool isDragOpenFromLeft = _animationController.isDismissed && details.globalPosition.dx < min;
  //
  // }
  void toggleAnimation() => _animationController.isDismissed ?
  _animationController.forward():_animationController.reverse();
 var myDrawer = Container(color: Colors.blue,);
 var myChild = Container(color: Colors.yellow,);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleAnimation,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Stack(
            children: [
              myDrawer,
              Transform(
               // scale: 1 - (_animationController.value * 0.5),
                alignment: Alignment.centerRight,
                transform: Matrix4.identity()..rotateY(1 - (_animationController.value )),
                child:myChild
              ),
            ],
          );
        },
      ),
    );
  }
}
