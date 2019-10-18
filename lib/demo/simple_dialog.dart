import 'package:flutter/material.dart';
import 'dart:async';

enum Option {
  A,B,C
}

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  String youoption = "nothing";
  

    

  Future _showSimpleDialog () async{
    final option = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Simple Dialog"),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: (){
                Navigator.pop(context, Option.A);
              },
              child: Text("Option A"),
            ),
            SimpleDialogOption(
              onPressed: (){
                Navigator.pop(context, Option.B);
              },
              child: Text("Option B"),
            ),
            SimpleDialogOption(
              onPressed: (){
                Navigator.pop(context, Option.C);
              },
              child: Text("Option C"),
            )
          ],
        );
      }
    );
    switch(option) {
      case Option.A:
        setState(() {
          youoption = "A";
        });
        break;
      case Option.B:
        setState(() {
          youoption = "B";
        });
        break;
      case Option.C:
        setState(() {
          youoption = "C";
        });
        break;
      default:
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Your Option is $youoption"),
            SizedBox(height: 90,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: _showSimpleDialog,
                  child: Icon(Icons.add),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
