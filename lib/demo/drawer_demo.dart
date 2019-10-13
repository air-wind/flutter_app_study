import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
//                DrawerHeader(
//                  child: Text("hello World!".toUpperCase()),
//                  decoration: BoxDecoration(
//                    color: Colors.grey[100]
//                  ),
//                ),
            UserAccountsDrawerHeader(
              accountName: Text("Wander"),
              accountEmail: Text("152307863"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/42259784?s=460&v=4"),
              ),
              decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                    image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1570968675456&di=f36928b8571da8bfbe9ba9ab9ec5d38b&imgtype=0&src=http%3A%2F%2Fwww.linuxeden.com%2Fwp-content%2Fuploads%2F2018%2F06%2F065c4ee70c465f10b3a2750b631da7bcd61.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400].withOpacity(0.6),
                        BlendMode.darken
                    )

                ),
              ),
            ),
            ListTile(
              title: Text("hello1", textAlign: TextAlign.left,),
              leading: Icon(Icons.access_alarm, size: 22, color: Colors.black12),
              trailing: Icon(Icons.access_alarm, size: 22, color: Colors.black12),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text("hello1", textAlign: TextAlign.left,),
              leading: Icon(Icons.access_alarm, size: 22, color: Colors.black12),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text("hello1", textAlign: TextAlign.left,),
              leading: Icon(Icons.access_alarm, size: 22, color: Colors.black12),
              onTap: () => Navigator.pop(context),
            ),
          ]
      ),
    );
  }

}