import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget{
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
    fontFamily: "yahei",
    color: Colors.black
  );

  String _name = "将进酒";
  String _author = "李白";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text(
            "《$_name》--$_author--君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停。与君歌一曲，请君为我倾耳听。",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: _textStyle,
          ),
          SizedBox(height: 16,),
          RichText(
            text: TextSpan(
              text: "Hello",
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.purple,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
              ),
            children: [
              TextSpan(
                text: "Hello",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey
                ),
              )
            ]
            ),
          ),
          SizedBox(height: 16,),

          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/nvhai.jpg"),
                alignment: Alignment.topCenter,
//                repeat: ImageRepeat.repeatX,
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.indigoAccent[400].withOpacity(0.9),
                    BlendMode.hardLight
                )

              )
            ),
//            color: Colors.grey[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Icon(Icons.pool, size: 56, color: Colors.white,),
//                  color: Colors.blue,
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(120),
                  width: 90,
                  height: 90,
//                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.blue,
//                    border: Border(
//                      top: BorderSide(width: 30, style: BorderStyle.solid)
//                    ),
                    border: Border.all(
                      width: 4,
                      color: Colors.green[100]
                    ),
//                    borderRadius: BorderRadius.circular(45),
  //                  borderRadius: BorderRadius.only(
  //                    topLeft: Radius.circular(24),
  //                    bottomLeft: Radius.circular(34)
  //                  ),
                    boxShadow:[
                      BoxShadow(
                        offset: Offset(7, 8),
                        color: Colors.green[300],
                        blurRadius: 24,
                        spreadRadius: -1
                      ),
                    ],
                    shape: BoxShape.circle,
//                    gradient: LinearGradient(
//                        colors: [
//                          Colors.lightBlueAccent,
//                          Colors.blue
//                        ],
//                      begin: Alignment.bottomCenter,
//                      end: Alignment.topRight,
//                    ),
                    gradient: RadialGradient(
                      colors: [
                        Colors.lightBlueAccent,
                        Colors.blue
                      ],
                    )
                  ),
                ),
              ],
            ),
          ),



        ],
      ),
    );
  }
  
}