import 'package:flutter/material.dart';


class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SnackBarButton()
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SnackBarButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text("Show SnackBar"),
      onPressed: (){
        Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Info You"),
              action: SnackBarAction(
                label: "OK",
                onPressed: (){},
              ),
            )
        );
      },
    );
  }
}

