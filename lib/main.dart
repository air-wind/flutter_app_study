import 'package:flutter/material.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation.dart';
import 'demo/listview_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layut_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/form_demo.dart';
import 'demo/material_compontent.dart';
//import 'demo/state/state_managment_demo.dart';
import 'demo/state/scoped_model.dart';


void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello",
//      home: Home(),
//      home: NavigatorDemo(),
      initialRoute: "/state_managment",
      routes: {
//        "/": (context) => NavigatorDemo(),
        "/": (context) => Home(),
        "/about": (context)=>Page(tittle:"ABOUT"),
        "/register": (context)=>FormDmeo(),
        "/mdc": (context)=>MaterialCompontent(),
//        "/state_managment": (context)=>StateManagmentDemo(),
        "/state_managment": (context)=>ScropedModelDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.blue,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.transparent,
        )
      ),
    );
  }
}

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
//            leading: IconButton(
//                icon: Icon(Icons.menu),
//                tooltip: "Navigation",
//                onPressed: () => debugPrint("Navigation active")
//            ),
            title: Text("Hello"),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: "Search",
                  onPressed: () => debugPrint("Search active")
              ),
            ],
            elevation: 0.0,//设置阴影
            bottom: TabBar(
              unselectedLabelColor: Colors.black12,
              indicatorColor: Colors.black38,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.access_alarm),),
                Tab(icon: Icon(Icons.access_time),),
                Tab(icon: Icon(Icons.ac_unit),),
                Tab(icon: Icon(Icons.add_box),),
              ],
            ),
          ),
          drawer: DrawerDemo(),
          body: TabBarView(
              children: <Widget>[
                ListViewDemo(),
                BasicDemo(),
//                Tab(icon: Icon(Icons.ac_unit, size: 160, color: Colors.black12),),
                SliverDemo(),
                ViewDemo(),
              ],
          ),
          bottomNavigationBar: BottomNavigation(),
        ),
    );
  }
}