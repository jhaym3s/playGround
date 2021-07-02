import 'package:flutter/material.dart';

class MyDraggableScrollable extends StatefulWidget {
  @override
  _MyDraggableScrollableState createState() => _MyDraggableScrollableState();
}

class _MyDraggableScrollableState extends State<MyDraggableScrollable> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: deviceSize.width,
            height: deviceSize.height,
            color: Colors.blue,
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.1,
            minChildSize: 0.1,
            maxChildSize: 1.0,
            builder: (BuildContext context, myScrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.tealAccent[200],
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(200),topRight: Radius.circular(200)),
                ),
                child: ListView.builder(
                  controller: myScrollController,
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        title: Text(
                          'Dish $index',
                          style: TextStyle(color: Colors.black54),
                        ));
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
