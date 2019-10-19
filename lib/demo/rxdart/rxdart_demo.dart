import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';


class RxdartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RxdartDemoHome();
  }
}


class RxdartDemoHome extends StatefulWidget {
  @override
  _RxdartDemoHomeState createState() => _RxdartDemoHomeState();
}

class _RxdartDemoHomeState extends State<RxdartDemoHome> {
  PublishSubject<String> _textFiledSubject;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _textFiledSubject = PublishSubject<String>();
    _textFiledSubject
//        .map((item) => "item: $item")
//        .where((item) => item.length>9)
        .debounce((_) => TimerStream(true, const Duration(milliseconds: 500)))
        .listen((data) => print(data));

//    Observable<String> _observable =
//        Observable(Stream.fromIterable(["Hello", "Nihao"]));
//        Observable.fromFuture(Future.value("Hello~"));
//        Observable.fromIterable(["Hello", "Nihao"]);
//        Observable.just("Hello~");
//        Observable.periodic(Duration(seconds: 2), (x) => x.toString());
//    _observable.listen(print);


//    PublishSubject<String> _subject = PublishSubject<String>();
////    BehaviorSubject<String> _subject = BehaviorSubject<String>();
////    ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 2);
//
//    _subject.add("hello");
//    _subject.add("hela");
//    _subject.add("hi");
//    _subject.listen((data) => print("Listen1 $data"));
//
//    _subject.listen((data) => print("Listen1 ${data.toUpperCase()}"));

//    _subject.listen((data) => print("Listen1 $data"));
//    _subject.add("hello");
//
//    _subject.listen((data) => print("Listen1 ${data.toUpperCase()}"));
//    _subject.add("hela");

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _textFiledSubject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rxdart"),
      ),
      body: Theme(
          data: Theme.of(context).copyWith(
              primaryColor: Colors.black
          ),
          child: TextField(
            onChanged: (value){
              _textFiledSubject.add(value);
            },
            onSubmitted: (value){
              _textFiledSubject.add(value);
            },
            decoration: InputDecoration(
                filled: true,
                labelText: "Please Input"
            ),
          )
      ),
    );
  }
}
