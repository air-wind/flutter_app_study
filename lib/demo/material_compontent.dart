import 'package:flutter/material.dart';
import 'buttondemo.dart';
import 'floating_button_demo.dart';
import 'popub_menu_button.dart';

class MaterialCompontent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello".toUpperCase()),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: "PopubMenuButton", page: PopupMenuButtonDemo(),),
          ListItem(title: " BUTTON", page: ButtonDemo(),),
          ListItem(title: "FloatingActionButton", page: FloatingActionButtonDemo(),)
        ],
      ),
    );
  }
}





class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page
          ),
        );
      },
    );
  }
}

