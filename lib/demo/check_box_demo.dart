import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class CheckBoxDemo extends StatefulWidget {
  CheckBoxDemo({Key key}) : super(key: key);

  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _checkItemA = true;

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
            CheckboxListTile(
              value: _checkItemA,
              onChanged: (value){
                setState(() {
                  _checkItemA = value;
                });
              },
              title: Text("Set Hello World"),
              subtitle: Text("say byby"),
              secondary: Icon(Icons.build),
              selected: _checkItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Checkbox(
//                  activeColor: Colors.black,
//                  value: _checkItemA,
//                  onChanged: (value){
//                    setState(() {
//                      _checkItemA = value;
//                    });
//                  },
//                )
              ],
            )
          ],
        ),
      ),
    );
  }
}