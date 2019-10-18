import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = false;

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
            SwitchListTile(
              title: Text("SET Hello Word"),
              subtitle: Text("bullala"),
              secondary: Icon(_switchItemA? Icons.visibility:Icons.visibility_off),
              value: _switchItemA,
              onChanged: (value){
                setState(() {
                  _switchItemA = value;
                });
              },
              selected: _switchItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_switchItemA? "😍" : "😱"),
                Switch(
                  value: _switchItemA,
                  onChanged: (value){
                    setState(() {
                      _switchItemA = value;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
