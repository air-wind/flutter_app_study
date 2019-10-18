import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/post.dart';

class DateTableDemo extends StatefulWidget {
  @override
  _DateTableDemoState createState() => _DateTableDemoState();
}

class _DateTableDemoState extends State<DateTableDemo> {
  bool _sortAscending;
  int _sortColumnIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
        elevation: 0,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            DataTable(
              sortAscending: _sortAscending,
              sortColumnIndex: _sortColumnIndex,
//              onSelectAll: (bool value){
//                if(value){
//                  print(value);
//                }
//              },
              columns: [
                DataColumn(
                  label: Text("Tittle"),
                  onSort: (int index, bool ascending){
                    setState(() {
                      _sortAscending = ascending;
                      _sortColumnIndex = index;

                      posts.sort((a, b){
                        if (!ascending) {
                          final c = a;
                          a = b;
                          b = c;
                        }
                        return a.title.length.compareTo(b.title.length);
                      });
                    });
                  }
                ),
                DataColumn(
                  label: Text("Author")
                ),
                DataColumn(
                    label: Text("Image")
                )
              ],
              rows: posts.map((post){
                return DataRow(
                  selected: post.selected,
                  onSelectChanged: (bool value){
                    setState(() {
                      if(post.selected != value){
                        post.selected = value;
                      }
                    });
                  },
                  cells: [
                    DataCell(Text(post.title)),
                    DataCell(Text(post.author)),
                    DataCell(Container(
                      child: Image.network(post.imageUrl,),
                      padding: EdgeInsets.all(4),
                    )),
                  ]
                );
              }).toList()
            )
          ],
        )
      ),
    );
  }
}
