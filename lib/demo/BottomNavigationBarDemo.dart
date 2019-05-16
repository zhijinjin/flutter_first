import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarState();
  }
}

class _BottomNavigationBarState extends State<BottomNavigationBarDemo> {
  int _crruntIndex = 0;

  void setIndex(int index) {
    setState(() {
      _crruntIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _crruntIndex,
        onTap: setIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), title: Text('message')),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone), title: Text('phone')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('person'))
        ]);
  }
}
