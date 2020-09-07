import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playground/users.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: SearchData());
              },
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shadowColor: Colors.blueGrey,
                elevation: 120,
                child: Container(
                    width: 380,
                    height: 160,
                    color: Colors.blue,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 25,
                          ),
                        ),
                        Text("this is the text"),
                        Text("this is the sport for email"),
                        Text("this is the the twitter spot")
                      ],
                    )),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(child: Text("this is the part")),
                  Container(child: Text("this is the part")),
                  Container(child: Text("this is the part")),
                  Container(child: Text("this is the part")),
                ],
              ),
            )
          ],
        ));
  }
}

class SearchData extends SearchDelegate<Users> {
  List<Users> listOfUsers = [
    Users("Jhaymes", "Mobile developer"),
    Users("Jhaymes", "BackEnd developer"),
    Users("Jhaymes", "FrontEnd developer"),
    Users("Jhaymes", "FullStalk developer"),
    Users("Jhaymes", " Designer"),
    Users("Jhaymes", "Git professional"),
    Users("Jhaymes", "Something else"),
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return GridView(gridDelegate: null);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestion = listOfUsers;
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.computer),
          title: Text(suggestion[index].name),
          onTap: () {},
          subtitle: Text(suggestion[index].title),
        );
      },
      itemCount: suggestion.length,
    );
  }
}
