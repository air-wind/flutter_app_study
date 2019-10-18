import 'package:flutter/material.dart';
import 'dart:async';

enum Choice {
  Cancle, Ok
}

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = "Nothing";

  void _showAlertDialog()async{
    final choice =  await showDialog (
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(

          title: Text("Say Hello"),
          content: Text("hhhh"),
          actions: <Widget>[
            FlatButton(
              onPressed: (){
                Navigator.pop(context, Choice.Ok);
              },
              child: Text("OK"),
            ),
            FlatButton(
              onPressed: (){
                Navigator.pop(context, Choice.Cancle);
              },
              child: Text("Cancle"),
            )
          ],
        );
      }
    );

    switch(choice) {
      case Choice.Ok:
        setState(() {
          _choice = "Ok";
        });
        break;
      case Choice.Cancle:
        setState(() {
          _choice = "Cancle";
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
            Text("Now Choic is $_choice"),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("出现吧"),
                  onPressed: _showAlertDialog,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
