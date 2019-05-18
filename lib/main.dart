import 'package:flutter/material.dart';
import './demo/listview.dart';

void main()=>runApp(App());


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigration',
            onPressed: ()=>debugPrint('menu'),
          ),
          actions: <Widget>[
            IconButton(
            icon:Icon(Icons.search),
            tooltip: 'Search',
            onPressed: ()=>debugPrint('serch'),
            ),
                IconButton(
            icon:Icon(Icons.more_horiz),
            tooltip: 'Search',
            onPressed: ()=>debugPrint('more'),
            ),
          ],
          title: Text('MY'),
          elevation: 0,
        ),
        body: null,
      );
  }
}



