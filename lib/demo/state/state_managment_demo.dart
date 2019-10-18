import 'package:flutter/material.dart';


class StateManagmentDemo extends StatefulWidget {
  @override
  _StateManagmentDemoState createState() => _StateManagmentDemoState();
}

class _StateManagmentDemoState extends State<StateManagmentDemo> {
  int _count = 0;

  void increaseCount(){
    setState(() {
      _count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      count: _count,
      increaseCount: increaseCount,
      child: Scaffold(
        appBar: AppBar(
          title: Text("StateManagment"),
          elevation: 0,
          centerTitle: true,
        ),
        body: CounterWrap(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: increaseCount,
        ),
      )
    );
  }
}

class CounterWrap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    int _count = CounterProvider.of(context).count;
    final VoidCallback increaseCount = CounterProvider.of(context).increaseCount;
    return ActionChip(
        label: Text("$_count"),
        onPressed: increaseCount,
    );
  }
}



class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  CounterProvider({
      this.count,
      this.increaseCount,
      this.child
      }): super(child: child);

  static CounterProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return false;
  }




}


