import 'package:flutter/material.dart';
import './demo/listview.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(//左上菜单，当添加左抽屉后，会自动添加
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigration',
          //   onPressed: () => debugPrint('menu'),
          // ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('serch'),
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              tooltip: 'Search',
              onPressed: () => debugPrint('more'),
            ),
          ],
          title: Text('MY'),
          elevation: 0,
          bottom: TabBar(
            unselectedLabelColor: Colors.white54,
            indicatorColor: Colors.white70,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 2,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            Icon(Icons.change_history, size: 128, color: Colors.black12),
            Icon(Icons.directions_bike, size: 128, color: Colors.black12),
          ],
        ),
        //左抽屉
        drawer: DrawerDemo(),
        //底部导航栏
        bottomNavigationBar: BottomNavigationBarDemo(),
        endDrawer: Container(
          color: Colors.white,
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('data')],
          ),
        ), //右抽屉
      ),
    );
  }
}
