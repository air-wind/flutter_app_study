import 'package:flutter/material.dart';


class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
//          Stack(
//            alignment: Alignment(-0.3, 0.4),
//            children: <Widget>[
//              SizedBox(
//
//                width: 200,
//                height: 300,
//                child: Container(
//                    decoration: BoxDecoration(
//                        color: Colors.deepPurple,
//                        borderRadius: BorderRadius.circular(50)
//                    ),
//                    alignment: Alignment.topCenter,
//                    child: null
//                ),
//              ),
//              SizedBox(
//                width: 100,
//                height: 100,
//                child: Container(
//                    decoration: BoxDecoration(
//                        color: Colors.indigo,
//                        borderRadius: BorderRadius.circular(20)
//                    ),
//                    child: Icon(Icons.pool, size: 64, color: Colors.white,)
//                ),
//              ),
//              Positioned(
//                left: 20,
//                top: 30,
//                child: Icon(Icons.pool, size: 64, color: Colors.white,),
//              )
//            ],
//          )
          AspectRatio(
            aspectRatio: 3/2,
            child: Container(
              color: Color.fromRGBO(2, 3, 143, 0.8),
              child: Icon(Icons.pool),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200,
              minWidth: 200,
            ),
            child: Container(
              color: Colors.blue,
              child: Icon(Icons.description),
            ),
          ),
        ],
      ),
    );
  }

}


class IconBadge extends StatelessWidget{
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white,),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),

    );
  }
}