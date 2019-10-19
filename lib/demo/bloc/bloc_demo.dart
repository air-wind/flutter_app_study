import 'package:flutter/material.dart';
import 'counter_block_demo.dart';

class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      bloc: CounterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bloc"),
        ),
        body: CounterHome(),
        floatingActionButton: CounterActionButtion(),
      ),
    );
  }
}
