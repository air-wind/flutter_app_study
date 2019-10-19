import 'dart:async';

import 'package:flutter/material.dart';

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).bloc;

    return Center(
      child: StreamBuilder(
        stream: _counterBloc.count,
        builder: (context, snapshot){
          return ActionChip(
            label: Text("${snapshot.data==null ? 0:snapshot.data}"),
            onPressed: (){
//          _counterBloc.log();
              _counterBloc.counter.add(1);
            },
          );
        },
      )
    );
  }


}
class CounterActionButtion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    CounterBloc _counterBloc = CounterProvider.of(context).bloc;

    return FloatingActionButton(
      onPressed: (){
        _counterBloc.counter.add(1);
      },
      child: Icon(Icons.add),
    );
  }
}


class CounterProvider extends InheritedWidget{
  final Widget child;
  final CounterBloc bloc;

  CounterProvider({
    this.child,
    this.bloc
  }): super(child: child);

  static CounterProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

}

class CounterBloc{
  int _count = 0;

  final _counterActionController = StreamController<int>();
  StreamSink<int> get counter => _counterActionController.sink;

  final _counterController = StreamController<int>();
  Stream<int> get count => _counterController.stream;


  CounterBloc(){
    _counterActionController.stream.listen(onData);
  }

  void onData(int data){
    print("$data");
    _count = data + _count;
    _counterController.add(_count);
  }

  void disponse(){
    _counterActionController.close();
  }

  void log(){
    print("bloc");
  }
}
