import 'package:flutter/material.dart';
import 'demo/ListView_Demo.dart';
import 'demo/DrawerDemo.dart';
import 'demo/BottomNavigationBarDemo.dart';
import 'demo/Page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: new MaterialApp(
//          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              highlightColor: Color.fromARGB(0, 0, 0, 0),
              splashColor: Colors.yellow),
          home: new Scaffold(
            backgroundColor: Colors.white,
            appBar: new AppBar(
              centerTitle: true,
              title: new Text('第一个demo'),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () => debugPrint('search click'))
              ],
              elevation: 10.0,
              bottom: TabBar(
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.yellow,
                  labelColor: Colors.yellow,
                  tabs: [
                    Tab(icon: Icon(Icons.access_alarms)),
                    Tab(icon: Icon(Icons.accessibility_new)),
                    Tab(icon: Icon(Icons.ac_unit))
                  ]),
            ),
            body: TabBarView(
                children: [ListView_Demo(), Page2(), ListView_Demo()]),
            floatingActionButton: new FloatingActionButton(
              onPressed: null,
              tooltip: 'http',
              child: new Icon(Icons.all_inclusive),
            ),
            drawer: DrawerDemo(),
            bottomNavigationBar: BottomNavigationBarDemo(),
          )),
    );
  }
}
