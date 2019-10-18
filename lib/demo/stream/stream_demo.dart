import 'dart:async';

import 'package:flutter/material.dart';


class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamDemoHome();
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamDemoSubsciption;
  StreamController<String> _streamDemo;
  StreamSink<String> _sinkDemo;
  String _data = "....";

  @override
  void dispose() {
    _streamDemo.close();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("Create a stream");
//    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
//    _streamDemo = StreamController<String>();
    _streamDemo = StreamController.broadcast();
    _sinkDemo = _streamDemo.sink;

    print("start listen a stream");
    _streamDemoSubsciption = _streamDemo.stream.listen(onData, onDone: onDone, onError: onError);
    _streamDemoSubsciption = _streamDemo.stream.listen(onDataTwo, onDone: onDone, onError: onError);

    print("finish initState");
  }

  void onDone(){
    print("Done");
  }

  void onError(error){
    print("Error $error");
  }

  
  void onData(String data){
    setState(() {
      _data = data;
    });
    print("onData: $data");
  }

  void onDataTwo(String data){
    print("onDataTwo: $data");
  }

  Future<String> fetchData() async{
    await Future.delayed(Duration(seconds: 3));
//    throw "Something wrong";
    return "Hello~";
  }

  void _pauseStream(){
    print("Pause subscription");
    _streamDemoSubsciption.pause();
  }

  void _resumeStream(){
    print("Resume subscription");
    _streamDemoSubsciption.resume();
  }

  void _cancelStream(){
    print("Cancel subscription");
    _streamDemoSubsciption.cancel();
  }

  void _addDataToStream() async{
    print("Add Data To Stream");

    String data = await fetchData();

//    _streamDemo.add(data);
    _sinkDemo.add(data);

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamDemo"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Text(_data),
            StreamBuilder(
              stream: _streamDemo.stream,
              initialData: "......",
              builder: (context, snapshot){
                return Text("${snapshot.data}");
              }
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text("Add"),
                  onPressed:_addDataToStream,
                ),
                FlatButton(
                  child: Text("Pause"),
                  onPressed: _pauseStream,
                ),
                FlatButton(
                  child: Text("Resume"),
                  onPressed: _resumeStream,
                ),
                FlatButton(
                  child: Text("Cancel"),
                  onPressed: _cancelStream,
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}

