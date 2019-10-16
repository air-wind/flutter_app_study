import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  final Widget FlatbuttonDemo = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      FlatButton(
        child: Text("button"),
        onPressed: (){},
        textColor: Colors.lightBlue,
        splashColor: Colors.grey,
      ),
      FlatButton.icon(
        onPressed: (){},
        icon: Icon(Icons.add),
        label: Text("button"),
        splashColor: Colors.grey,
      )
    ],
  );
  final Widget RaiseButtonDemo = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Theme(
        data: ThemeData(
            buttonColor: Colors.lightBlue,
            buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                )
            )
        ),
        child: RaisedButton(
          child: Text("button"),
          elevation: 6.0,
          onPressed: (){},
          textColor: Colors.lightBlue,
          splashColor: Colors.grey,
        ),
      ),
      SizedBox(width: 15,),
      RaisedButton.icon(
        onPressed: (){},
        icon: Icon(Icons.add),
        label: Text("button"),
        splashColor: Colors.grey,
      )
    ],
  );
  final Widget OutlineButtonDemo = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Theme(
        data: ThemeData(
            buttonColor: Colors.lightBlue,
            buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
//                    shape: BeveledRectangleBorder(
//                      borderRadius: BorderRadius.circular(5)
//                    ),
                shape: StadiumBorder()
            )
        ),
        child: OutlineButton(
          child: Text("button"),
          onPressed: (){},
          textColor: Colors.lightBlue,
          splashColor: Colors.grey,
          highlightColor: Colors.black38,
          borderSide: BorderSide(
              color: Colors.black
          ),
        ),
      ),
      SizedBox(width: 15,),
      OutlineButton.icon(
        onPressed: (){},
        icon: Icon(Icons.add),
        label: Text("button"),
        splashColor: Colors.grey,
        borderSide: BorderSide(
            color: Colors.black
        ),
      )
    ],
  );
  final Widget FixedButtonDemo = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        width: 200,
        child:OutlineButton.icon(
          onPressed: (){},
          icon: Icon(Icons.add),
          label: Text("button"),
          splashColor: Colors.grey,
          borderSide: BorderSide(
              color: Colors.black
          ),
        ),
      ),

    ],
  );
  final Widget ExpandedBUttonDemo = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Expanded(
        child: OutlineButton.icon(
          onPressed: (){},
          icon: Icon(Icons.add),
          label: Text("button"),
          splashColor: Colors.grey,
          borderSide: BorderSide(
              color: Colors.black
          ),
        ),
      ),
      SizedBox(width: 16,),
      Expanded(
        flex: 2,
        child: OutlineButton.icon(
          onPressed: (){},
          icon: Icon(Icons.add),
          label: Text("button"),
          splashColor: Colors.grey,
          borderSide: BorderSide(
              color: Colors.black
          ),
        ),
      ),

    ],
  );
  final Widget ButtonBarDemo = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Theme(
          data: ThemeData(
              buttonTheme: ButtonThemeData(
                  padding: EdgeInsets.symmetric(horizontal: 20)
              )
          ),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton.icon(
                onPressed: (){},
                icon: Icon(Icons.add),
                label: Text("button"),
                splashColor: Colors.grey,
                borderSide: BorderSide(
                    color: Colors.black
                ),
              ),
              OutlineButton.icon(
                onPressed: (){},
                icon: Icon(Icons.add),
                label: Text("button"),
                splashColor: Colors.grey,
                borderSide: BorderSide(
                    color: Colors.black
                ),
              ),
            ],
          )
      )

    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BUTTON "),
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatbuttonDemo,
              RaiseButtonDemo,
              OutlineButtonDemo,
              FixedButtonDemo,
              ExpandedBUttonDemo,
              ButtonBarDemo
            ],
          ),
        )
    );
  }
}