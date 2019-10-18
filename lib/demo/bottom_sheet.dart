import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';


class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  Future _showModalBottomSheet() async{
    final option = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return Container(
            height: 200,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Option A"),
                  onTap: (){
                    Navigator.pop(context, "A");
                  },
                ),
                ListTile(
                  title: Text("Option B"),
                  onTap: (){
                    Navigator.pop(context, "B");
                  },
                ),
                ListTile(
                  title: Text("Option C"),
                  onTap: (){
                    Navigator.pop(context, "C");
                  },
                ),
              ],
            ),
          );
        }
    );
    switch(option) {
      case "A":
        print("A");
        break;
      case "B":
        print("B");
        break;
      case "C":
        print("C");
        break;
      default:
    }

  }

  void _showBottomSheet(){
    _bottomSheetScaffoldKey
      .currentState
        .showBottomSheet(
        (BuildContext context){
          return BottomAppBar(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              height: 90,
              child: Row(
                children: <Widget>[
                  Icon(Icons.pause_circle_outline),
                  SizedBox(width: 12,),
                  Text("01:30-03:00"),
                  Expanded(
                    child: Text("Say Hello World！", textAlign: TextAlign.right,),
                  )
                ],
              ),
            ),
          );

        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text("CheckBox"),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: _showBottomSheet,
                  child: Text("Open BottomSheet"),
                ),
                SizedBox(width: 20,),
                RaisedButton(
                  onPressed: _showModalBottomSheet,
                  child: Text("Modal BottomSheet"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
