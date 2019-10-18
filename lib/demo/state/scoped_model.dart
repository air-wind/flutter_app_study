import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';


class ScropedModelDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModel<CounterModel>(
        model: CounterModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("ScropedModelDemo"),
            elevation: 0,
            centerTitle: true,
          ),
          body: CounterWrap(),
          floatingActionButton: ScopedModelDescendant<CounterModel>(
              rebuildOnChange: false,
              builder: (context, child, model)  => FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: model.increaseCount,
              ),
          )

        )
    );;
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
    return ScopedModelDescendant<CounterModel>(
        builder: (context, child, model) => ActionChip(
          label: Text("{$model._count}"),
          onPressed: model.increaseCount,
        )
    );
  }
}



class CounterModel extends Model{
  int _count = 0;
  int get count => _count;

  void increaseCount(){
    _count += 1;
    notifyListeners();
  }

}


