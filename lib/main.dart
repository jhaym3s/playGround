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
          IconButton(icon: Icon(Icons.search),onPressed: (){
            showSearch(context: context, delegate: SearchData());
          },)
        ],
      ),
    );
  }
}

class SearchData extends SearchDelegate<Users>{
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
   return [IconButton(icon: Icon(Icons.clear), onPressed: (){
     query = "";
   })
   ];
  }

  @override
  Widget buildLeading(BuildContext context) {
   return IconButton(icon: Icon(Icons.arrow_back), onPressed: (){});
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   final suggestion = listOfUsers;
   return ListView.builder(itemBuilder: (context,index){
     return ListTile(leading: Icon(Icons.computer),
       title: Text(suggestion[index].name),
       onTap: (){},

       subtitle: Text(suggestion[index].title),);

   },itemCount: suggestion.length,);
  }

}