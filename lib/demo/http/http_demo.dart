import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;


class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HttpDemo"),
      ),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {
  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    fetchPost();

    final post = {
      "tittle": "fnd",
      "author": "ikdfn"
    };

    final postJson = json.encode(post);
    print(postJson);

    final postJosnConverted = json.decode(postJson);

    final postModel = Post.fromJson(postJosnConverted);
    print(postModel["tittle"]);
    print(postJosnConverted is Map);
  }

  fetchPost() async{
    print(123);
    final response = await http.get("http://www.baidu.com");

    print(response.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class Post{
  String tittle;
  String description;

  Post({
    this.tittle,
    this.description,
});

  Post.fromJson(Map josn)
    :tittle = json["tittle"],
     description = json["description"];

  Map toJson() => {
    "tittle": tittle,
    "description": description
  };

}

