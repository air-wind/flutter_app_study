import 'package:flutter/material.dart';


class FloatingActionButtonDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: (){

    },
    elevation: 0,
    backgroundColor: Colors.lightBlue,
    child: Icon(Icons.add),
//    shape: BeveledRectangleBorder(
//      borderRadius: BorderRadius.circular(30)
//    ),

  );

  final Widget _floatingActionButtonExtent = FloatingActionButton.extended(
    onPressed: (){},
    icon: Icon(Icons.add),
    label: Text("add"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButtonDemo"),
        elevation: 0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,

        ),
        shape: CircularNotchedRectangle(),
      ),
    );

  }
}