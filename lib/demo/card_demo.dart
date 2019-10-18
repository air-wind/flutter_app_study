import 'package:flutter/material.dart';
import 'package:flutter_app/model/post.dart';
import '../model/post.dart';

class CardDemo extends StatefulWidget {
  @override
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
        elevation: 0,
      ),
      body: Container(
        child: ListView(
          children: posts.map((post){
            return Card(
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16/9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)
                      ),
                      child: Image.network(post.imageUrl, fit: BoxFit.cover,),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(post.imageUrl),
                    ),
                    title: Text(post.title),
                    subtitle: Text(post.title),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text(post.description, maxLines: 2, overflow: TextOverflow.ellipsis,),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: Text("Link"),
                          onPressed: (){},
                        ),
                        FlatButton(
                          child: Text("Like"),
                          onPressed: (){},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        )
      ),
    );
  }
}
