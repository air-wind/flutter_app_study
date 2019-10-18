import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {

  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    "Apple",
    "Bananla",
    "Range"
  ];

  String action = "Noting";
  
  List<String> _slected = [];

  String _choice = "Apple";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 40.0,
//              行与行之间
              runSpacing: 10,
              children: <Widget>[
                Chip(
                  label: Text("Life"),
                ),
                Chip(
                  label: Text("Sunset"),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text("Life"),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text("皓"),
                  ),
                ),
                Chip(
                  label: Text("SuckLife"),
                  avatar: CircleAvatar(
                    backgroundImage: AssetImage("./images/nvhai.jpg"),
                  ),
                ),
                Chip(
                  label: Text("Suck"),
                  onDeleted: (){

                  },
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: "Show Delete Message",
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag){
                    return Chip(
                        label: Text(tag),
                      onDeleted: (){
                          setState(() {
                            _tags.remove(tag);
                          });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                ),
                Container(
                  height: 20,
                  child: Text("Now you press is $action"),
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag){
                    return ActionChip(
                      label: Text(tag),
                      onPressed: (){
                        setState(() {
                          action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag){
                    return FilterChip(
                      label: Text(tag),
                      selected: _slected.contains(tag),
                      onSelected: ((value){
                        setState(() {
                          print(value);
                          if (_slected.contains(tag)){
                            _slected.remove(tag);
                          }else{
                            _slected.add(tag);
                          }
                        });
                      }
                      ),
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag){
                    return FilterChip(
                      label: Text(tag),
                      selected: _choice == tag,
                      selectedColor: Colors.black26,
                      onSelected: ((value){
                        setState(() {
                          _choice = tag;
                        });
                      }
                      ),
                    );
                  }).toList(),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: (){
          setState(() {
            _tags = [
              "Apple",
              "Bananla",
              "Range"
            ];

            _slected = [];

            _choice = "Apple";
          });
        },
      ),
    );
  }
}
