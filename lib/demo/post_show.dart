import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShowDemo extends StatelessWidget{
  final Post post;

  PostShowDemo({
    @required this.post
  });


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("${this.post}".toUpperCase()),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Image.network(post.imageUrl),
          Container(
            padding: EdgeInsets.all(32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(post.title, style: Theme.of(context).textTheme.title),
                Text(post.author, style: Theme.of(context).textTheme.subhead),
                SizedBox(height: 32,),
                Text(post.description, style: Theme.of(context).textTheme.body1,)
              ],
            ),
          )
        ],

      ),
    );
  }
}