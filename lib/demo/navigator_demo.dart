import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("home"),
              onPressed: (){Navigator.pushNamed(context, "/about");},
            ),
            FlatButton(
              child: Text("back"),
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (BuildContext) => Page(tittle:"hello"),
                    )
                );
              },
            )
          ],
        ),
      ),
    );
  }
}


class Page extends StatelessWidget{

  final String tittle;

  Page({this.tittle});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(tittle),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
          onPressed: (){Navigator.pop(context);}
      ),
    );

  }


}