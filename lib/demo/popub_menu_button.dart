import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currenMenuItem = "HOME";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PopubMenuButtonDemo"),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currenMenuItem),
                PopupMenuButton(
                  onSelected: (value){
                    print(value);
                    setState(() {
                      _currenMenuItem = value;
                    });
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      value: "HOME",
                      child: Text("HOME"),
                    ),
                    PopupMenuItem(
                      value: "BACK",
                      child: Text("BACK"),
                    ),
                    PopupMenuItem(
                      value: "<MENU>",
                      child: Text("<MENU>"),
                    ),
                  ],
                ),
              ],
            )
          ],
        )
      ),
    );;
  }
}

