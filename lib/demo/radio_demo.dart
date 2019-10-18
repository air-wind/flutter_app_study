import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;

  void _radioOnChanged(value){
    setState(() {
      _radioGroupA = value;
    });
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
            RadioListTile(
              title: Text("SET Hello Word"),
              subtitle: Text("bullala"),
              secondary: Icon(Icons.access_alarm),
              selected: _radioGroupA == 0,
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _radioOnChanged,
            ),
            RadioListTile(
              title: Text("SET Hello Word"),
              subtitle: Text("bullala"),
              secondary: Icon(Icons.access_alarm),
              selected: _radioGroupA == 1,
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _radioOnChanged,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Radio(
//                  value: 0,
//                  groupValue: _radioGroupA,
//                  onChanged: (value){
//                    setState(() {
//                      _radioGroupA = value;
//                    });
//                  },
//                ),
//                Radio(
//                  value: 1,
//                  groupValue: _radioGroupA,
//                  onChanged: (value){
//                    setState(() {
//                      _radioGroupA = value;
//                    });
//                  },
//                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

