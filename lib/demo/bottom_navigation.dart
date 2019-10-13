import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigation();
  }

}

class _BottomNavigation extends State<BottomNavigation>{
  int _curentindex = 1;

  void _onTapHandler(int index) {
    setState((){
      _curentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        currentIndex: _curentindex,
        onTap: _onTapHandler,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            title: Text("首页"),
          )
        ]
    );
  }

}