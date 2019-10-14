import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//            title: Text("HELLO"),
            floating: true,
//            pinned: true,
            expandedHeight: 178,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              collapseMode: CollapseMode.parallax,
              background: Image.network("https://resources.ninghao.org/images/undo.jpg", fit: BoxFit.cover,),
              title: Text("HELLO".toUpperCase(),style:
                TextStyle(
                  fontSize: 18,
                  letterSpacing: 4,
                  fontWeight: FontWeight.w400,
                ),),

            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(4),
              sliver: SliverListDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index){
              return Padding(
                padding: EdgeInsets.only(
                  bottom: 32,
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(40.0),
                  elevation: 14.0,
                  shadowColor: Colors.blue.withOpacity(0.5),
                  child: Container(
                    child: Stack(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 16/9,
                          child: AspectRatio(
                              aspectRatio: 16/9,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  posts[index].imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              )
                          ),
                        ),
                        Positioned(
                          top: 32,
                          left: 14,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                posts[index].author,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                posts[index].title,
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          )
                        )
                      ],
                    )
                  ),
                ),
              );
            },
            childCount: posts.length
        ),
    );
  }
}


class SliverGridDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
        delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index){
              return Container(
                child: Image.network(
                  posts[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              );
            },
            childCount: posts.length
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1.5
        )
    );
  }
}
