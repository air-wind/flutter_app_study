import 'package:flutter/material.dart';
import '../model/post.dart';


class PostDataSource extends DataTableSource{
  final List<Post> _posts = posts;
  int _selectedCount = 0;

  void _sort(getFiled(post), bool ascending){
    _posts.sort((a, b){
      if (!ascending) {
        final c = a;
        a = b;
        b = c;
      }
      final avalue = getFiled(a);
      final bvalue = getFiled(b);

      return Comparable.compare(avalue, bvalue);
    }) ;

    notifyListeners();
  }

  @override
  DataRow getRow(int index) {
    final post = _posts[index];
    // TODO: implement getRow
    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[
        DataCell(Text(post.title)),
        DataCell(Text(post.author)),
        DataCell(Container(
          child: Image.network(post.imageUrl,),
          padding: EdgeInsets.all(4),
        )),
      ]
    );
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _posts.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => _selectedCount;

}

class PaginatedDateTableDemo extends StatefulWidget {
  @override
  _PaginatedDateTableDemoState createState() => _PaginatedDateTableDemoState();
}

class _PaginatedDateTableDemoState extends State<PaginatedDateTableDemo> {
  bool _sortAscending = true;
  int _sortColumnIndex = 0;

  final PostDataSource _postDataSource = PostDataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(18),
          child: ListView(
            children: <Widget>[
              PaginatedDataTable(
                header: Text("posts"),
                rowsPerPage: 8,
                source: _postDataSource,
                sortAscending: _sortAscending,
                sortColumnIndex: _sortColumnIndex,
//              onSelectAll: (bool value){
//                if(value){
//                  print(value);
//                }
//              },
                  columns: [
                    DataColumn(
                        label: Container(
                          width: 130,
                          child: Text("Tittle"),
                        ),
                        onSort: (int columindex, bool ascending){
                          setState(() {
                            _postDataSource._sort((post) => post.title.length, ascending);

                            _sortAscending = ascending;
                            _sortColumnIndex = columindex;
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

              )
            ],
          )
      ),
    );
  }
}