import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewBuiderDemo();
  }
}


class GridViewBuiderDemo extends StatelessWidget{
  Widget _gridItermBuider(BuildContext context, int index){
    return Container(
      child: Image.network(posts[index].imageUrl, fit: BoxFit.cover,),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(8),
      itemCount: posts.length,
      itemBuilder: _gridItermBuider,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
//        childAspectRatio: 0.5
      ),
        
    );
  }
}

class GridViewExtentDemo extends StatelessWidget{
  List<Widget> _contTitle(int length){
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey[200],
        alignment: Alignment.center,
        child: Text("Item $index"),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
//      scrollDirection: Axis.horizontal,
      maxCrossAxisExtent: 200,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: _contTitle(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget{
  List<Widget> _contTitle(int length){
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey[200],
        alignment: Alignment.center,
        child: Text("Item $index"),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
//      scrollDirection: Axis.horizontal,
      crossAxisCount: 3,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: _contTitle(100),
    );
  }
}


class PageViewBuilderDemo extends StatelessWidget{
  Widget _pageItermBuiilder(BuildContext context, int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(posts[index].imageUrl, fit: BoxFit.cover,),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Column(
            children: <Widget>[
              Text(
                posts[index].author,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].title,
                style: TextStyle(fontSize: 16,),
              ),
            ],
          ),
        )
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
        itemCount: posts.length,
        itemBuilder: _pageItermBuiilder
    );
  }
}


class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
//      pageSnapping: false,
//      reverse: true,
//      scrollDirection: Axis.vertical,
      onPageChanged: (curentPage)=> debugPrint("$curentPage"),
      controller: PageController(
        initialPage: 1,
        keepPage: true,
        viewportFraction: 1,
      ),
      children: <Widget>[
        Container(
          color: Colors.grey[100],
          alignment: Alignment.center,
          child: Text(
            "ONE",
            style: TextStyle(
                fontSize: 32, color: Colors.blue
            ),
          ),
        ),
        Container(
          color: Colors.black12,
          alignment: Alignment.center,
          child: Text(
            "TWO",
            style: TextStyle(
                fontSize: 32, color: Colors.blue
            ),
          ),
        ),
        Container(
          color: Colors.grey[500],
          alignment: Alignment.center,
          child: Text(
            "SENCEND",
            style: TextStyle(
                fontSize: 32, color: Colors.blue
            ),
          ),
        ),
      ],
    );
  }
}